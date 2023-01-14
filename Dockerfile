FROM ghcr.io/taihouzhao/gaas-docker-base:v1.4.4

COPY . /codeformer
WORKDIR /codeformer
RUN rm -rf .git assets inputs web-demos

RUN pip install --no-cache-dir --upgrade -r requirements.txt
RUN python basicsr/setup.py develop

ENTRYPOINT python inference_codeformer.py