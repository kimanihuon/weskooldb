FROM mongo

RUN mkdir /app

WORKDIR /app

COPY ./replicate.js /app/replicate.js
COPY ./setup.sh /app/setup.sh

RUN chmod +x /app/setup.sh

CMD ["/app/setup.sh"]