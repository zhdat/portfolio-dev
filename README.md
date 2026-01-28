# Portfolio - Calliste Ravix

![Build Status](https://img.shields.io/badge/build-passing-brightgreen) ![License](https://img.shields.io/badge/license-MIT-blue) ![Astro](https://img.shields.io/badge/built%20with-Astro-orange)

> **Portfolio personnel axé sur la performance et le minimalisme.**
> Conçu pour offrir un score Lighthouse de 100/100, ce projet sert de démonstration technique pour une architecture Jamstack moderne hébergée sur VPS.

## 🛠 Stack Technique

Ce projet a été conçu pour allier performance frontend et rigueur DevOps.

- **Core :** [Astro](https://astro.build/) (Architecture "Islands" pour le Zero-JS par défaut)
- **Style :** TailwindCSS (pour un design utility-first léger)
- **Infrastructure :** Docker & Docker Compose
- **Serveur Web :** Caddy (Gestion automatique HTTPS/TLS)
- **CI/CD :** GitHub Actions (Déploiement continu sur VPS)

## 🚀 Installation & Développement

Pour lancer ce projet en local :

```bash
# 1. Cloner le repo
git clone [https://github.com/zhdat/portfolio-dev.git](https://github.com/zhdat/portfolio-dev.git)

# 2. Installer les dépendances
npm install

# 3. Lancer le serveur de dev
npm run dev

```

## 🐳 Déploiement Docker

Le projet est entièrement conteneurisé. Pour tester la version de production en local

```bash
docker compose up --build
```

## 🔄 Architecture de Déploiement

1. Push sur la branch `main` déclenche un workflow GitHub Actions
2. Workflow compile le projet et le déploie sur le VPS
3. Caddy s'occupe de la gestion automatique du HTTPS/TLS

_Réalisé par Calliste Ravix - [https://www.malt.fr/profile/callisteravix1]_
