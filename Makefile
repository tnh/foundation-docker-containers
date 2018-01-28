.PHONY: build 

setup-buildkite-env:
	gem install bundle 
	which bundle 
	bundle install
  
build: setup-buildkite-env
	cd jre8 && make all
