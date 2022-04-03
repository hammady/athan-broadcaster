FROM savonet/liquidsoap-alpine:v2.0.3
WORKDIR /home
COPY Adhan-Madinah.mp3 adhan.mp3
COPY playlist.m3u playlist.m3u
COPY main.liq main.liq
CMD [ "/home/main.liq" ]
