.PHONY: install run server

install:
	go mod download

run: server

server: install
	hugo server --disableFastRender --printI18nWarnings
