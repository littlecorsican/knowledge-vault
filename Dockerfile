FROM node:18

WORKDIR /app

RUN apt-get update && apt-get install -y git && \
    npm install -g retype-cli

RUN git clone https://github.com/littlecorsican/knowledge-vault.git .

RUN git pull https://github.com/littlecorsican/knowledge-vault.git

EXPOSE 5000

CMD ["retype", "start", "0.0.0.0"]
