VERSION = 2.7.12

.PHONY: help staging base solar build

help:
	# make base
	# make staging
	# make solar
	# make build

staging: base
	docker build -t lcgc/python:$(VERSION)-staging staging/

base:
	docker build -t lcgc/python:$(VERSION)-base base/

solar:
	docker build -t lcgc/python:$(VERSION)-solar solar/

build:
	docker build -t lcgc/python:2.7.12-2 .
