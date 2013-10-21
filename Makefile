TESTS += test/*.test.js

test:
	@./node_modules/.bin/mocha \
		--ui exports \
		--reporter spec \
		--slow 2000ms \
		--bail \
		$(TESTS)

.PHONY: test jshint

jshint:
	./node_modules/.bin/jshint index.js lib bin
