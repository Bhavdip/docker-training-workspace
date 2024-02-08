FROM node

# set working directory
WORKDIR /app

#since it is node js app we first copy project package.json dependencies file
COPY package.json .

#install the node_modules
RUN npm install --verbose

#Then copy the project files into image and therfore into the container
COPY . .

#set default value to built-time argument DEFAULT_PORT
ARG DEFAULT_PORT=3000

#set environment variable value
ENV PORT=$DEFUALT_PORT

EXPOSE ${PORT}

CMD ["npm", "start"]
