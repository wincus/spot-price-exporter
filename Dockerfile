FROM alpine as certs

FROM scratch
ENTRYPOINT ["/spot-price-exporter"]
COPY spot-price-exporter /

COPY --from=certs /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
