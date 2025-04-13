ARG VERSION="12"
ARG OS="debian"
ARG NAME="bookworm"

FROM scratch
ADD --chown=107:107 https://cloud.debian.org/images/cloud/${NAME}/daily/latest/${OS}-${VERSION}-genericcloud-amd64-daily.qcow2 /disk/disk.qcow2
