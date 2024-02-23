#building the Docker image
FROM node:14-alpine3.16

#image will be created in this working directory.
WORKDIR /react-app

#package.json to the react-app working directory.
COPY package.json .
COPY package-lock.json .

#install all the React.js application dependencies
RUN npm install

#copy files from local React folder to container workdir folder
COPY . .

#Expose the React.js application container on port 3000
EXPOSE 3000

#The command to start the React.js application container
CMD ["npm", "start"]
