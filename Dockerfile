FROM nikolaik/python-nodejs:python3.10-nodejs17
RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir CilikMusic \
    && cd CilikMusic \
    && git clone https://github.com/grey423/CilikMusic
WORKDIR /CilikMusic/CilikMusic
RUN pip3 install --no-cache-dir --upgrade --requirement requirements.txt
CMD python3 -m CilikMusic

