FROM node:14.16.0-alpine3.13
RUN addgroup app && adduser -S -G app vamshi
USER vamshi
WORKDIR /app
RUN mkdir data
COPY package*.json .
#reuse the cahe for installation
RUN npm install 
COPY . .
ENV API_URL=http://api.com/
EXPOSE 3000
#shell form
# CMD npm start

#exec form
CMD ["npm", "start"]
# ENTRYPOINT [ "npm", "start" ]
