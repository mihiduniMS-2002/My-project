 # Use the latest version of the Node.js image as the base image
FROM node:latest  

# Set the working directory inside the container to /usr/src/app
WORKDIR /usr/src/app  

# Copy the package.json and package-lock.json to the container (if available)
COPY package*.json ./

# Run npm install to install the dependencies specified in package.json
RUN npm install  

# Copy the rest of the application code into the container
COPY . .

# Expose port 3000 (or any port your app listens to)
EXPOSE 3000  

# Start the application by running the "node index.js" command (if that’s your main file)
CMD [ "node", "index.js" ]
