testwatch:
	./node_modules/.bin/nodemon -L -d 0 -w . --exec make test

test:
	./node_modules/.bin/mocha --recursive -C

clean:
	rm -rf node_modules

install:
	npm install

# travis-cli build will fail if we try to run install or testwatch so we will only run test by default
.PHONY: test