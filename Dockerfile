FROM docker.io/axel7083/clustersecret:base-image-py-3-11-5
ADD /src /src

RUN pip install kopf[dev]
RUN adduser --system --no-create-home secretmonkey
USER secretmonkey
CMD kopf run --liveness=http://0.0.0.0:8080/healthz -A /src/handlers.py
