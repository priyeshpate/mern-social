FROM node:14

# Create app directory

RUN mkdir usr/src/app
WORKDIR /usr/src/app


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# Install app dependencies
COPY package*.json /usr/src/app/
RUN npm install



# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY frontend/src/ /usr/src/app



EXPOSE 3000
CMD [ "npm", "start","run dev" ]
CMD ["node", "frontend/src/index.js"]
