# multi-step process docker file
FROM node:alpine
WORKDIR '/app'
COPY package*.json ./
RUN npm install
COPY ./ ./
RUN npm run build

# For production don't need the full source code and dependencies.
# All we need is the code in the build folder!
FROM nginx
EXPOSE 80
COPY --from=0 /app/build /usr/share/nginx/html
# nginx start without explicitly specifying run command!