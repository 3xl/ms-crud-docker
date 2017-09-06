FROM    node:8.4.0

RUN     git clone https://github.com/3xl/ms-crud.git /home/code
WORKDIR /home/code
RUN     npm install --global nodemon
RUN     npm install
RUN     mv /home/code/.env.template /home/code/.env
EXPOSE  4001

CMD     ["nodemon"]