REPONAME = clubedeautores
IMAGENAME = ruby-22
IMAGELABEL = latest
IMAGE = $(REPONAME)/$(IMAGENAME):$(IMAGELABEL)

all:
	docker build . -t $(IMAGE)
	@echo Nova imagem gerada: $(IMAGE)
	@echo Execute "make push" para enviar para o docker hub

push:
	docker push $(IMAGE)
