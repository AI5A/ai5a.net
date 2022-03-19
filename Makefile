serve:
	docker run -u "$(shell id -u):$(shell id -g)" -v $(PWD):/app \
	--workdir /app \
	-p 8080:8080 -p 1024:1024 ghcr.io/getzola/zola:v0.15.1 \
	serve --interface 0.0.0.0 --port 8080 --base-url localhost

build:
	docker run -u "$(shell id -u):$(shell id -g)" -v $(PWD):/app \
	--workdir /app \
	-p 8080:8080 -p 1024:1024 ghcr.io/getzola/zola:v0.15.1 \
	build
