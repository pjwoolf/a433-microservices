# Use node.js version 14 as base image
FROM  node:14

# Set /app as working directory
WORKDIR /app

# Copy all source code to working directory
COPY . .

# Set app running on production mode and item-db as database host
ENV NODE_ENV=production DB_HOST=item-db

# Install dependencies for production and build the app
RUN npm install --production --unsafe-perm && npm run build

# Expose app on port 8080
EXPOSE 8080

# Run a server
CMD [ "npm", "start" ]