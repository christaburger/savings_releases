FROM ubuntu:latest

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git

RUN  apt-get update && \
     apt-get install mysql-server -y
    
RUN git clone https://github.com/christaburger/savings_releases.git

WORKDIR savings_releases

RUN tar -xzf Savings_v2-0.1.1-Linux.tar.gz
RUN cp -a Savings_v2-0.1.1-Linux/Package/. .
RUN cp -a Savings_v2-0.1.1-Linux/lib/libmysqlcppconn8.so.2 /usr/lib/
RUN sudo ldconfig

ENV PATH="${PATH}:/savings_releases"

EXPOSE 8080

# Start Server
#ENTRYPOINT ["Savings_v2"]

# mysql
