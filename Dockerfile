FROM node:alpine
ENV APPCENTER_ACCESS_TOKEN=
RUN mkdir ~/.appcenter-cli && \
    echo false > ~/.appcenter-cli/telemetryEnabled.json && \
    npm install -g appcenter-cli
ENTRYPOINT [ "appcenter" ]
CMD [ "help" ]