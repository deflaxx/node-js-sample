FROM node:18-alpine

WORKDIR /app

# Copier uniquement les fichiers de dépendances pour optimiser le cache
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Exposer le port (ajuste selon ton app)
EXPOSE 8080

# Lancer l'application
CMD ["npm", "start"]
