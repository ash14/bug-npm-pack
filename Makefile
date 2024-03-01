build:
	docker build --tag npm-test .; \
	docker run -it --rm npm-test

sh:
	docker run -it --rm --entrypoint sh npm-test
