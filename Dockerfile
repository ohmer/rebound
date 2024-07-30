FROM alpine:3
RUN apk --no-cache add unbound
COPY root /

EXPOSE 5053/tcp
EXPOSE 5053/udp

USER unbound

ENTRYPOINT ["/bin/entrypoint.sh"]
