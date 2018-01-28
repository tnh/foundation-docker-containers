.PHONY: buid 

build:
	bundle install
	cd jre8 && make all
