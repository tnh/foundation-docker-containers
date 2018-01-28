.PHONY: buid build-docker push

HASH := $(shell git rev-parse HEAD)

CONTAINER_NAME = example/jre8
AWS_DOCKER_ARN ?= 1234556-fill-in-or-set

all: build push

test:
	../scripts/docker-invoke.sh example/ruby25 scripts/run-rspec.sh

build: test build-docker

build-docker:
	docker build -t ${CONTAINER_NAME}:${HASH} .

push:
	docker tag ${CONTAINER_NAME}:${HASH} ${AWS_DOCKER_ARN}/${CONTAINER_NAME}:${HASH}
	docker push ${AWS_DOCKER_ARN}/${CONTAINER_NAME}:${HASH}
	docker tag ${CONTAINER_NAME}:${HASH} ${AWS_DOCKER_ARN}/${CONTAINER_NAME}:latest
	docker push ${AWS_DOCKER_ARN}/${CONTAINER_NAME}:latest
