FROM alpine AS dl

ARG VERSION="12"
ARG OS="debian"
ARG NAME="bookworm"

RUN apk add --no-cache curl qemu-img && \
  curl -L https://cloud.debian.org/images/cloud/$NAME/daily/latest/$OS-$VERSION-nocloud-amd64-daily.qcow2 -o /tmp/disk.qcow2 && \
  qemu-img resize -f qcow2 /tmp/disk.qcow2 +15G

FROM scratch

COPY --from=dl --chown=107:107 /tmp/disk.qcow2 /disk/disk.qcow2
