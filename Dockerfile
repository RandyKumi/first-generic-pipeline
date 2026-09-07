# This is a generic Dockerfile template.
# It uses Nginx to serve a simple static application, 
# but you can replace this with Node.js, Python, Java, etc.

FROM nginx:alpine

# Copy your application files into the container (uncomment and adjust when you have source code)
# COPY ./src /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
