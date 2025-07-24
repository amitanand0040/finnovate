# Stage 1: Build the React application
FROM node:18-alpine
WORKDIR /app
COPY package.json ./
COPY . ./
RUN npm install

# Stage 2: Serve the application with Nginx
EXPOSE 3000
CMD ["npm", "run", "dev"]
