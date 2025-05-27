FROM node:22
WORKDIR /app

COPY package*.json ./

# Just install, don't try to audit fix in Docker build
RUN npm install

COPY . .

EXPOSE 3000
CMD ["npm", "start"]
