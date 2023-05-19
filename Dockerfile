# Use an appropriate base image for your application
FROM node:14-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port your application listens on
EXPOSE 3000

# Start the application
CMD [ "npm", "start" ]

