BASE_DIR = $(shell pwd)
BUILD_DIR = $(BASE_DIR)/resources/public
REPO = $(shell git config --get remote.origin.url)

dev:
	lein ring server

build:
	lein run

publish: clean build
	-@git commit -a; git push origin master
	@rm -rf $(BUILD_DIR)/.git
	@cd $(BUILD_DIR) && \
	git init && \
	git add * &> /dev/null && \
	git commit -a -m "Generated content." &> /dev/null && \
	git push -f $(REPO) master:gh-pages
