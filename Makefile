repo = ghcr.io/kubevirt-images

all: 

push: push-ubuntu push-kali

build: build-ubuntu build-kali

push-ubuntu: build-ubuntu
	docker push $(repo)/ubuntu:24.04  

build-ubuntu:
	docker build -t $(repo)/ubuntu:24.04 ./ubuntu

push-kali: build-kali
	docker push $(repo)/kali:2024.3

build-kali:
	docker build -t $(repo)/kali:2024.3 ./kali --build-arg VERSION=2024.3

