TAG=latest
BIN=paperbox
IMAGE=unchartedsky/$(BIN)

image:
	docker build -t $(IMAGE):$(TAG) .

deploy: image
	docker push $(IMAGE):$(TAG)

run: image
    docker run -it --rm -p 4567:4567 $(IMAGE):$(TAG)

.PHONY: clean

clean: ;


