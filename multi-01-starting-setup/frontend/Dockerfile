#This is front app built using rect javascript library but to run the
#application we have node dependencies in order to access the app
#Therefor we go with node as base image
FROM node

#set working directory in image therefore in container
WORKDIR /app

#Since project has some dependencies we first copy the package.json file
#then do the npm install to download and install the dependencies
COPY package.json .

#download the project dependencies module
RUN npm install --verbose

#copy all our source code into image/container app directory
COPY . .

#Expose the port in order to access the app outside the container
#This project will run on 3000 in container to access outside we
#have to expose it.
EXPOSE 3000

#run the react application we use build scripts define in package.json file
#in node to run the node script use command npm
CMD [ "npm", "start" ]