# Svelte notes

## SASS

Add sass support:

  ```zsh
  npm i -d sass
  ```

## Dockerise

1. Modify `serve` in `package.json` by appending `--host`:

  ```json
  "serve": "vite preview --host",
  ```

1. Use Dockerfile template:

    ```docker
    FROM node:16-alpine

    WORKDIR /app

    COPY index.html ./
    COPY *config* ./
    COPY package*.json ./

    RUN npm install

    COPY ./src ./src
    COPY ./public ./public

    RUN npm run build

    EXPOSE 5000

    ENV HOST=0.0.0.0

    CMD [ "npm", "run", "serve" ]
    ```

1. Run it:

    ```zsh
    docker run --rm -p 5000:5000 fcrozatier/elcommentator:1.0.0
    ```
