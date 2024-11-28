# FROM node:16-alpine
# WORKDIR /usr/src/app
# COPY package*.json ./
# RUN npm install --production
# COPY . .
# ENV PORT 8080 
# EXPOSE 8080    
# CMD ["npm", "start"]


FROM node:14

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "start"]