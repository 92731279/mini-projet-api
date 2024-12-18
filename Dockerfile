# Utiliser une image officielle de Node.js
FROM node:18

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers dans le conteneur
COPY package*.json ./
COPY . .

# Installer les dépendances
RUN npm install

# Exposer le port utilisé par l'application
EXPOSE 3000

# Lancer l'application
CMD ["node", "index.js"]
