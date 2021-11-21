FROM node:15

RUN npm install -g http-server
                                                  
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install 

COPY . .

# install project dependencies
RUN yarn

# copy project files and folders to the current working directory (i.e. 'app' folder)
COPY . .

# build app for production with minification
RUN npm run build

EXPOSE 8080
CMD [ "http-server", "build" ]
