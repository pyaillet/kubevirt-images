ARG VERSION="24.04"
ARG NAME="noble"
ARG OS="ubuntu"

FROM alpine AS dl
RUN apk add --no-cache curl && \
  curl -L https://cloud-images.ubuntu.com/${NAME}/current/${NAME}-server-cloudimg-amd64.img -o /tmp/${NAME}-server-cloudimg-amd64.qcow2

FROM kubevirt/container-disk-v1alpha
COPY --from=dl /tmp/${NAME}-server-cloudimg-amd64.qcow2 /disk/
