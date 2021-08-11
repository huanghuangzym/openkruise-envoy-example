# Platforms to build the image for
PLATFORMS ?= linux/amd64,linux/arm64,linux/arm

# Run go fmt against code
fmt:
	go fmt ./...

# Run go vet against code
vet:
	go vet ./...


# Build the docker image
build: 
	docker build   -f Dockerfile.v1 . -t istio/proxyv2:1.10.3-hl
	docker build   -f Dockerfile.v2 . -t istio/proxyv2:1.10.3-hl2
	docker build   -f Dockerfile.v2 . -t istio/proxyv2:1.10.3-hl3
	docker build   -f Dockerfile.empty . -t istio/proxyv2:1.10.3-empty

