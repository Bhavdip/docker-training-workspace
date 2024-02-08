#Since this node js application we need node built image
FROM node

#set working directory
WORKDIR /app

#since it is node project first we copy packag.json file for our project
#dependecies
COPY package.json .

#Once the package.json is copied we do npm install
#This will download and install the dependencies for our project
RUN npm install --verbose

#In development we are using nodemon to automatically refresh the
#changes in to the container but in production we are not doing
#such things hence we have to locked the source code of our project
#by copying into the docker image.
COPY . .

#As we know container is isolated hence we have to expose the port number
#and map or forward it to the host machine port so we can do a communication
#outside it for that first we have to expose the container port number.
#Since this is node application the default port is 80 hence will expose port 80
EXPOSE 80

#MongoDB database environment variables
ENV MONGO_DB_USERNAME=admin
ENV MONGO_DB_PASSWORD=secret

#Start the nodemone script define in dev dependencies package.json
CMD [ "npm", "start" ]
