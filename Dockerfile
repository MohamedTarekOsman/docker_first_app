# FROM alpine 
# CMD ["echo", "there is first custom image"]
##########################################################
# FROM alpine
# WORKDIR /NODE_OS2 
# COPY index.js .
# RUN apk add --update nodejs npm
# RUN npm install express
# EXPOSE 8080
# CMD node index.js
##########################################################
# FROM alpine
# WORKDIR /app
# COPY index.js .
# # Install nodejs & npm
# RUN apk add --update nodejs npm
# #  Install our project dependencies ( libraries ) 
# RUN npm install express
# # EXPOSE 8080 # Not necessary, only used to tell whoever is using the image that the application is listening to that port
# CMD node index.js 
##########################################################################
# # base image alpine is used for its small size
# FROM alpine
# # packages or dep
# RUN apk add --update redis
# # commands to run on image
# CMD [ "redis - server"]
##########################################################################
FROM openjdk:8
WORKDIR /dir
COPY  . /dir
RUN javac Os2.java
CMD ["java", "Os2"]
