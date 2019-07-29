FROM alpine

RUN apk --no-cache add socat

RUN apk --no-cache add bash
ADD entrypoint.sh /entrypont.sh
ENTRYPOINT ["/bin/bash", "/entrypont.sh"]
