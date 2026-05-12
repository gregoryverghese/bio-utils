FROM debian:12-slim

RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y unzip && rm -rf /var/lib/apt/lists/* && \
    curl -sL https://gdc.cancer.gov/files/public/file/gdc-client_v2.3_Ubuntu_x64.zip \
    -o /tmp/gdc-client.zip && \
    unzip /tmp/gdc-client.zip -d /usr/local/bin && \
    chmod +x /usr/local/bin/gdc-client && \
    rm /tmp/gdc-client.zip

ENTRYPOINT ["gdc-client"]
