# Use the official Node.js image as base
FROM node:18-alpine

#Setup the working directory in the container
WORKDIR /

#copy the package.json and installation dependencies
COPY package*.json ./
RUN npm install

#copy all of the app files
COPY . .

#expose the port our app is running on
EXPOSE 4000

#run our application witch command
CMD ["node", "app.js"]