#use alpine based image
FROM alpine

#Use apk a package manager to Install Node.js and necessary packages:
RUN apk update && \
    apk add --no-cache \
    nodejs \
    npm

# Set the working directory
WORKDIR /app

#Copy Package json file first into the container
COPY package.json /app

#Install the node module and project dependencies
RUN npm install

#COPY all files into image. As we know image contains all source code files and environment
COPY . .

#expose the port number
EXPOSE 80

# Set execute permissions for the shell script
RUN chmod +x start.sh

# #Run Node JS server
# CMD [ "node", "server.js" ]

# The issue is with the Dockerfile; it currently has two CMD instructions,
# but only the last one will be executed.
# To address this, we can combine the two commands into a single CMD instruction that runs both the Node.js server and the interactive shell.
# Start the Node.js server and interactive shell this will also wont work
# In Docker, only a single CMD instruction is executed,
# so it's not possible to run both the Node.js server and an interactive shell in the same CMD command.
#To address this, we can use a simple workaround by using a shell script that starts the Node.js server and then launches an interactive shell.
# Start the shell script
CMD ["./start.sh"]
