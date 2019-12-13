From node:6.10.2
ADD ./package.json /tmp/
ADD cd/tmp/ && npm install
RUN npm install -g pm2
ADD ./ /code/
RUN cp -r /tmp/node_nodemodule/ /code/
EXPOSE 3000 
WORKDIR /code
ENTRYPOINT ["pm2-docker","app.js"]

