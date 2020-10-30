FROM ubuntu

RUN apt-get update && apt upgrade -y

RUN apt-get install python3 python3-pip -y
RUN pip3 install --upgrade pip

# numpy is instaled with tensorflow
RUN pip3 install tensorflow sklearn scipy pandas matplotlib seaborn jupyter notebook
