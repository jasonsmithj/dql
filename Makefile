.PHONY: build login query

AWS_PROFILE := $(shell echo ${AWS_PROFILE})
AWS_REGION  := ap-northeast-1

QUERY := SELECT * FROM hoge WHERE fuga = 'piyo'

build:
	docker compose build --no-cache

login:
	docker compose run -it --rm dql bash

query:
	@@docker compose run -it --rm dql bash -c "dql -r ${AWS_REGION} -c \"${QUERY}\" --json"