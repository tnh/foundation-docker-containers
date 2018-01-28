.PHONY: build 

build:
	gem install bundle
	bundle install
	cd jre8 && make all
