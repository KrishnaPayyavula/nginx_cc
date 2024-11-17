# Use the official Node.js image as the base image
# Node version 14 is specified for compatibility with the application.
FROM node:14  

# Set the working directory inside the container
# All subsequent commands will be run within this directory.
WORKDIR /app  

# Copy the server script to the working directory
COPY server.js .  

# Copy the HTML file to the working directory
COPY index.html .  

# Copy the 'images' directory and its contents to the working directory
COPY images ./images  

# Copy the package.json file to the working directory
# This file contains the dependencies required by the application.
COPY package.json .  

# Install the Node.js dependencies defined in package.json
RUN npm install  

# Expose port 3000 on the container
# This allows the host machine to communicate with the containerized app through this port.
EXPOSE 3000  

# Define the command to run when the container starts
# Starts the Node.js server using the server.js file.
CMD ["node", "server.js"]
