# utiliser une image Node.js
FROM node:18 

#mettre le dossier de travail à /app
WORKDIR /app 

#copier le package.json et le package-lock.json
COPY package*.json ./

#installer les dependances
RUN npm install 

#copier le reste des fichiers 
Copy . . 

#exposer le port 3000
EXPOSE 3000

#demarrer l'application 
CMD [ "npm", "start" ]
