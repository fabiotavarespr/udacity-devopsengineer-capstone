# Stage 1
FROM node:10.18.1 as react-build

RUN mkdir /app
WORKDIR /app
COPY project/. ./
RUN yarn
RUN ls -la
RUN yarn build

# Stage 2 - the production environment
FROM nginx:alpine
COPY --from=react-build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]