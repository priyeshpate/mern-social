FROM node:alpine as builder 
WORKDIR /usr/src/app 
COPY ./ /usr/src/app 
RUN npm install  
FROM node:alpine as app
WORKDIR /usr/src/app C
OPY --from=builder /usr/src/app /usr/src/app 
ENTRYPOINT ["/bin/sh", "-c" , "pwd & ls & npm run serve"]
