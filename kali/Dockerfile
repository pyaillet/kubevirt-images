ARG VERSION="2024.3"
ARG NAME="<none>"
ARG OS="kali"

FROM alpine AS dl
RUN apk add --no-cache 7zip curl && \
  curl -L https://cdimage.kali.org/kali-2024.3/kali-linux-2024.3-qemu-amd64.7z -o /tmp/kali-linux-2024.3-qemu-amd64.7z && \
  7z x /tmp/kali-linux-2024.3-qemu-amd64.7z

FROM kubevirt/container-disk-v1alpha
COPY --from=dl /tmp/kali-linux-2024.3-qemu-amd64.qcow2 /disk/


