REPONAME = clubedeautores
IMAGENAME = ruby-22
IMAGELABEL = latest
IMAGE = $(REPONAME)/$(IMAGENAME):$(IMAGELABEL)

all:
	docker build . -t $(IMAGE)

push:
	docker push $(IMAGE)
