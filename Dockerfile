#building the Docker image
FROM node:19-alpine3.16

#image will be created in this working directory.
WORKDIR /react-app

#package.json to the react-app working directory.
COPY package.json .\React-app
COPY package-lock.json .\React-app

#install all the React.js application dependencies
RUN npm i

#copy files from local React folder to container workdir folder
COPY . .\React-app

#Expose the React.js application container on port 3000
EXPOSE 3000

#The command to start the React.js application container
CMD ["npm", "start"]