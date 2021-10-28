# Select node version
FROM node:14.18.1

# Create app work directory, and copies frontend into it
WORKDIR /app
COPY frontend /app/frontend

# Install dependencies
RUN cd /app/frontend && npm i

# Build and start server app on port 3000
RUN cd /app/frontend && npm run build && npm run start
EXPOSE 3000

