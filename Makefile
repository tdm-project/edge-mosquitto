DOCKER_IMAGE_VERSION=1.1
DOCKER_IMAGE_NAME=tdmproject/edge-mosquitto
DOCKER_IMAGE_TAGNAME=$(DOCKER_IMAGE_NAME):$(DOCKER_IMAGE_VERSION)
DOCKER_IMAGE_LATEST=$(DOCKER_IMAGE_NAME):latest

default: build

build:
	docker build -f docker/Dockerfile -t $(DOCKER_IMAGE_TAGNAME) .
	docker tag $(DOCKER_IMAGE_TAGNAME) $(DOCKER_IMAGE_LATEST)

push:
	docker push $(DOCKER_IMAGE_TAGNAME)
	docker push $(DOCKER_IMAGE_LATEST)

test:
	docker run --rm --entrypoint=/bin/echo $(DOCKER_IMAGE_TAGNAME) "Success."
