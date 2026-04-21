# Image de base légère
FROM node:18-alpine

# Dossier de travail
WORKDIR /app

# Installation des dépendances [cite: 46]
COPY package*.json ./
RUN npm install --omit=dev

# Copie du code source [cite: 47]
COPY . .

# Port d'écoute 
EXPOSE 3000

# Démarrage de l'application [cite: 49]
CMD ["node", "app.js"]