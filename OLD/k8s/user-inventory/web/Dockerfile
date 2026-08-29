# Use Node.js LTS image
FROM node:22-alpine

# Set working directory
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application code
COPY . .

# Application listens on port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
