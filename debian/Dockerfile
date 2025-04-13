ARG VERSION="12"
ARG OS="debian"
ARG NAME="bookworm"

FROM alpine AS dl
RUN apk add --no-cache curl && \
  curl -L https://cloud.debian.org/images/cloud/${NAME}/daily/latest/${OS}-${VERSION}-genericcloud-amd64-daily.qcow2 -o /tmp/${OS}-${VERSION}-cloud-amd64.qcow2

FROM kubevirt/container-disk-v1alpha
COPY --from=dl /tmp/${OS}-${VERSION}-cloud-amd64.qcow2 /disk/
