FROM nextcloud:18

RUN apt-get update && apt-get install sudo -y

WORKDIR /preview

COPY ./cron.sh /preview/cron.sh

CMD [ "./cron.sh" ]
