DOCKER_REGISTRY=hub.docker.com
IMAGE=${DOCKER_REGISTRY}/barbasa/postgres-data

run:
	docker-compose up

start:
	docker-compose up -d

build clean publish:
	docker build -t jenkins .

clean:
	docker rmi -f ${IMAGE}

publish:
	docker push ${IMAGE}

stop:
	-docker-compose down
	for dockid in $$(docker ps -a -q); do docker rm -f $$dockid; done

restart: stop start

.PHONY: build clean stop run start publish restart
