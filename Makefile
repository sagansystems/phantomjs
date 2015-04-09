.PHONY: build-compile run-compile

compile:
	docker build -f Dockerfile-compile --rm -t sagan/phantomjs-compile .
	docker run -it -v `pwd`/output:/phantomjs/output sagan/phantomjs-compile sh compile.sh

image:
		docker build -f Dockerfile-phantomjs --rm -t sagan/phantomjs .

version:
		docker run -it sagan/phantomjs phantomjs --version
