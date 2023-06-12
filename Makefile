SEVERITIES = HIGH,CRITICAL

.PHONY: all
all:
	#sudo docker build --no-cache --build-arg -t rancher/istio-installer:$(TAG) .
	docker buildx build --platform linux/amd64,linux/arm64 --push -t docker.io/mozhou001/rancher-istio-installer:1.17.2 .
