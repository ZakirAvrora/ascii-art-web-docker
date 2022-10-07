build:
	docker build --rm -t ascii-art-web .
	docker image prune --filter label=stage=builder -f
run:
	docker run --rm --name ascii-art-web -p 8080:8080 ascii-art-web
