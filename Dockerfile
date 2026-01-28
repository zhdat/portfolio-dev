# --- Étape 1 : Construction (Builder) ---
FROM node:lts-alpine AS build

WORKDIR /app

# On copie d'abord les fichiers de dépendances pour optimiser le cache Docker
COPY package.json package-lock.json ./

# Installation propre des dépendances (ci est plus strict que install)
RUN npm ci

# On copie tout le reste du code source
COPY . .

# On lance la construction du site (génère le dossier dist/)
RUN npm run build

# --- Étape 2 : Production (Server) ---
FROM caddy:alpine

# On copie les fichiers statiques générés depuis l'étape précédente
COPY --from=build /app/dist /usr/share/caddy

# On copie la configuration du serveur Caddy (voir fichier suivant)
COPY Caddyfile /etc/caddy/Caddyfile

# On expose le port 80 du conteneur
EXPOSE 80