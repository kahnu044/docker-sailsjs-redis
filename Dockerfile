# Use an official Node.js image as the base
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the application dependencies
RUN npm install

# Copy the entire application directory into the container
COPY . .

# Expose the necessary port(s) for your Sails.js application
# EXPOSE 1337

# Start the application
CMD ["npm", "start"]