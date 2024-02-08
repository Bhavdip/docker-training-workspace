# Node Base Image
FROM node

#Define working directory for our app inside image in the end in container
WORKDIR /node-js-app

#Copy pakcage.json file into the working directory
COPY package.json /node-js-app/

#After copying package.json install node module, this will download project dependencies
#For that use RUN instructions
RUN npm install

#Copy all files in the working directory
COPY . .

#Expose container on port 80
EXPOSE 80

#Run the node-js app when container is running
CMD ["node", "server.js"]
