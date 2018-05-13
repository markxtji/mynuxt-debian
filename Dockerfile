FROM integratedexperts/circleci2-builder
#RUN mkdir -p /app
#COPY package.json package-lock.json /app/

USER root

COPY . /app/

WORKDIR /app

RUN npm install
ENV HOST 0.0.0.0
EXPOSE 3000


CMD ["npm", "run", "dev"]
