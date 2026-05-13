REGISTRY := ghcr.io/gregoryverghese
VERSION  := 1.0.0

build-%:
	docker build -t $(REGISTRY)/$*:$(VERSION) $*/

push-%:
	docker push $(REGISTRY)/$*:$(VERSION)

all: build-gdc-client push-gdc-client
