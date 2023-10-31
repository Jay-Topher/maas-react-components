# Use a Node.js base image

FROM node:20

# Set the working directory

WORKDIR /srv

# Copy package.json and package-lock.json

COPY package\*.json ./

# Install dependencies

RUN npm install

# Copy over the rest of the app code

COPY . .

# Expose the port for Storybook

EXPOSE 6006

# Start Storybook

CMD ["npm", "run", "storybook"]