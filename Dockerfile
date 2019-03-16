FROM ubuntu:18.04

# Install requirements
RUN apt-get update && \
    apt-get install -y curl gnupg2

# Install node 10.x
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install -y nodejs && \
    rm -rf /var/lib/apt/lists/*

# Install the app
WORKDIR /opt/app
COPY package.json index.js /opt/app/
RUN npm install --only=production

EXPOSE 8888
CMD ["npm", "start"]

