# Base image
FROM node:alpine

# setup a working directory
WORKDIR "/app"

# copy package.json
COPY package.json .

# install modules and dependencies
RUN npm install

# copy other application files
COPY . .


# start application
CMD [ "npm", "start" ] 