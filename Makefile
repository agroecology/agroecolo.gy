BASE_DIR = $(shell pwd)
BUILD_DIR = $(BASE_DIR)/resources/public
REPO = $(shell git config --get remote.origin.url)

build:
	lein run

dev:
	lein ring server

clean:
	rm -rf $(BUILD_DIR)

publish: clean build
	-@git commit -a; git push origin master
	@rm -rf $(BUILD_DIR)/.git
	@cd $(BUILD_DIR) && \
	git init && \
	git add * &> /dev/null && \
	git commit -a -m "Generated content." &> /dev/null && \
	git push -f $(REPO) master:gh-pages