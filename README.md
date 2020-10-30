# Data Science Docker Toolkit

Project to build a docker image with python and its libraries for data science

## About

Data Science Docker Toolkit is a project which uses docker to create a docker image for data science purposes. It starts with [Python](https://www.python.org/) and some data science libraries. This tools can be used though [jupyter notebook](https://jupyter.org/).

The docker image is based on [Ubuntu docker image](https://hub.docker.com/_/ubuntu/), therefore every command used on the dockerfile to install Python and its libraries were done from the Ubuntu's install package apt.

##  How to

>You will need to have docker installed. To see more about docker instalation access this [link](https://docs.docker.com/desktop/). 

### Building

It's needed to build a image from a docker file. To see more about building a docker image can be seen [here](https://docs.docker.com/engine/reference/commandline/build/). Inside the folder where's the docker file run the command below changing the `<image-name>` for a image's name of your choice. The `/<optional-name>` is optional so you can use it or not. It can be important to locate the docker image later.  

`docker build -t <image-name>/<optional-name> .`

### Runing

After running the command below there will be a docker image. However to launch the container change `<container-name>` to a container name of your choice and change also `<image-name>/<optional-name>`.  It's needed to link the host's directory and container's directory with the argument `-v <host-dir>:<container-dir>`. Simiraly do the connection between the host port and docker port changing `<host-port>`:`<docker-port>`. 

`docker run --name <container-name> -v <host-dir>:<container-dir> -p <host-port>:<docker-port> -ti <image-name>/<optional-name> /bin/bash`

### Using Jupyter Notebook

You can not use jupyter notebook inside the docker. So the jupyter notebook can be launched with some differently arguments. After running the command below you'll need to copy the token and paste into the jupyter's box which will appear in your browser. 

`jupyter notebook --ip 0.0.0.0 --port 8888 --no-browser --allow-root`

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.