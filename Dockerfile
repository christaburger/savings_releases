FROM ubuntu:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git
    
RUN git clone https://github.com/christaburger/savings_releases.git

WORKDIR savings_releases
RUN ./Savings_v2--Linux.sh --skip-license
RUN cd bin

EXPOSE 8080

# Start Server
CMD ./Savings_v2
