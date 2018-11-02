FROM node:8

# Create app directory
WORKDIR /opt/app

COPY . .

# Install app dependencies
# package.json and package-lock.json
COPY package*.json ./

RUN npm install

EXPOSE 3000

CMD ["yarn", "start"]