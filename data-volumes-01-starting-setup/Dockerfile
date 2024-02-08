#Since this node js application we need node built image
FROM node

#set working directory
WORKDIR /app

#Since it is node js application first copy package.json inside working directory
COPY package.json .

#Install the node module and project dependencies
RUN npm install --verbose

#copy all source code files and data into image /app file system
COPY . .

#Remove this instruction from here and add it into command line.
#VOLUME [ "/app/temp" ]

#Built in time env variable
ARG DEFUALT_PORT=80

#set environment variable value
ENV PORT=$DEFUALT_PORT

#Our node js is running on node. Expose the container port to access it outside world
#Expose the container port as per received as argument
EXPOSE ${PORT}

#Run Node JS server
CMD [ "npm", "start" ]
