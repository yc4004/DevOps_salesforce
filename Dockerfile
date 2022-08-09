FROM debian:buster
RUN apt-get update && apt-get install -y wget xz-utils
RUN wget https://developer.salesforce.com/media/salesforce-cli/sfdx-linux-amd64.tar.xz && mkdir sfdx && tar xJf sfdx-linux-amd64.tar.xz -C sfdx --strip-components 1 && ./sfdx/install
ENTRYPOINT [ "sfdx" ]
