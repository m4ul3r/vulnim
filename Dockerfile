FROM nimlang/nim:alpine

EXPOSE 8080/tcp

RUN apk update && apk add python3 \
                    py3-pip \
                    python3-dev \
                    libffi-dev \
                    rust \
                    cargo \ 
                    openssl-dev \
                    chromium-chromedriver

COPY src/ /app/

WORKDIR /app/

RUN pip3 install selenium requests

RUN nimble install prologue -y

RUN nimble install karax -y

# Set up admin_interaction cron job
COPY src/utility/admin_interaction_cron /etc/cron.d/admin_interaction

RUN chmod 0644 /etc/cron.d/admin_interaction

RUN crontab /etc/cron.d/admin_interaction

RUN touch /var/log/cron.log

COPY docker-entrypoint.sh /app/docker-entrypoint.sh

RUN chmod 755 /app/docker-entrypoint.sh

CMD ["/app/docker-entrypoint.sh"]