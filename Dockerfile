FROM fusuf/whatsasena:latest

RUN git clone https://github.com/AmineSoukara/DamienWhtsp /root/WhatsAsena
WORKDIR /root/WhatsAsena/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN npm install

CMD ["node", "bot.js"]
