FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/*

RUN wget -q --no-check-certificate -P /var/tmp https://github.com/conda-forge/miniforge/releases/download/25.3.1-0/Miniforge3-25.3.1-0-Linux-x86_64.sh && \
    bash /var/tmp/Miniforge3-25.3.1-0-Linux-x86_64.sh -b -p /opt/conda && \
    rm /var/tmp/Miniforge3-25.3.1-0-Linux-x86_64.sh

ENV PATH="/opt/conda/bin:$PATH"

COPY conda.yml /opt/

RUN conda env create -f /opt/conda.yml && \
    conda clean -a -y

COPY start.sh /opt/
RUN chmod +x /opt/start.sh

ENTRYPOINT ["/opt/start.sh"]
