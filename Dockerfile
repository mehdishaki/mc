FROM minio/mc:latest
RUN mkdir /.mc
RUN chgrp -R 0 /.mc && \
    chmod -R g=u  /.mc

ENTRYPOINT ["mc"]
