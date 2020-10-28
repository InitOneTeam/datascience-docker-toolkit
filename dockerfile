FROM ubuntu

RUN apt-get update && apt upgrade -y

RUN apt-get install python3 python3-pip -y
RUN pip3 install sklearn scipy numpy pandas matplotlib seaborn jupyter notebook
