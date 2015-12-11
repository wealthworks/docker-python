VERSION = 2.7.11

.PHONY: help staging base

help:
	# make base
	# make staging
	# make build

staging: base
	docker build -t lcgc/python:$(VERSION)-staging staging/

base:
	docker build -t lcgc/python:$(VERSION)-base base/

build:
	docker build -t lcgc/python:2.7.10-3 .
