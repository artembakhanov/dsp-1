FROM ubuntu:latest

RUN apt-get update && apt-get -y update
RUN apt-get install -y build-essential python3.6 python3-pip python3-dev git
RUN pip3 -q install pip --upgrade

RUN mkdir content
WORKDIR content/
COPY . .

RUN pip3 install -r requirements.txt
RUN pip3 install jupyterlab

RUN git clone https://github.com/ta3map/ADC_simulator.git


ENV TINI_VERSION v0.6.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
RUN chmod +x /usr/bin/tini
ENTRYPOINT ["/usr/bin/tini", "--"]

CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]