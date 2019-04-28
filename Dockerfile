FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

# Install your application's dependencies
RUN npm install

# Bundle app source
COPY . .

# Expose the node.js port to the Docker host.
EXPOSE 3000

CMD ["node" , "index.js"]