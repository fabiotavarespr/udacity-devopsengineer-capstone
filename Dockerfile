# Stage 1
FROM node:10.18.1 as react-build
WORKDIR /app
COPY app/. /app
RUN yarn
RUN yarn build

# Stage 2 - the production environment
FROM nginx:alpine
COPY --from=react-build /app/build /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]