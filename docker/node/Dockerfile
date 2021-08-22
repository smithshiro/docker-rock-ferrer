FROM node:14.17.5

ENV NUXT_HOST 0.0.0.0
EXPOSE 3000
COPY startup.sh /opt/startup.sh
RUN chmod +x /opt/startup.sh

CMD ["/bin/bash", "/opt/startup.sh"]
