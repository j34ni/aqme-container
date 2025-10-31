# AQME container

This repository provides a Dockerfile for AQME (Automated Quantum Mechanical Environments for Researchers and Educators)

The corresponding container images can be pulled from `https://quay.io/repository/jeani/aqme` and used as explained below:

*In this example it is assumed that the Python script and all the data are in the present working directory (`$PWD`), and binding in the container means that all its content will be found in `/opt/uio`*

## With Docker

1- Pull the container image

`docker pull quay.io/jeani/aqme:1.7.3`

2- Run the container

`docker run -it --rm -v $PWD:/opt/uio aqme:1.7.3`

3- Activate the `aqme` environment

`source /opt/start.sh`

4- Run your Python script (here with 32 CPUs)

`cd /opt/uio && python AQME_QDESCP.py --nprocs 32`

## With Singularity/Apptainer

1- Pull the container image

`apptainer pull docker://quay.io/jeani/aqme:1.7.3` 

this creates a file called (in this instance) `aqme_1_7_3.sif`

2- Start a shell in the container

`apptainer shell --bind $PWD:/opt/uio aqme_1_7_3.sif`

3- Activate the `aqme` environment

`source /opt/start.sh`

4- Run your Python script (here with 32 CPUs)

`cd /opt/uio && python AQME_QDESCP.py --nprocs 32`
