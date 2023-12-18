# Étape 1: Utiliser une image de base avec Node.js
FROM node:latest

# Étape 2: Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Étape 3: Copier les fichiers de dépendances
COPY package*.json ./

# Étape 4: Installer les dépendances
RUN npm install

# Étape 5: Copier tous les fichiers du projet dans le conteneur
COPY . .

# Étape 6: Exposer le port sur lequel l'application va s'exécuter
EXPOSE 3000

# Étape 7: Définir la commande pour démarrer l'application
CMD ["npm", "start"]
