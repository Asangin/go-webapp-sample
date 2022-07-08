APP_NAME=asangin/test-app

.PHONY: build_docker run_docker push_docker

build_docker:
	docker build -t $(APP_NAME) .

run_docker:
	docker run -p 8080:8080 $(APP_NAME)

push_docker:
	docker push $(APP_NAME)