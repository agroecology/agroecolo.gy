BASE_DIR = $(shell pwd)
BUILD_DIR = $(BASE_DIR)/resources/public
REPO = git@github.com:agroecology/agroecology.github.io.git

build:
	lein run

dev:
	lein ring server

clean:
	rm -rf $(BUILD_DIR)

commit-latest:
	-@git commit -a; git push origin master

publish: commit-latest clean build
	@rm -rf $(BUILD_DIR)/.git
	@cd $(BUILD_DIR) && \
	git init && \
	git add * &> /dev/null && \
	git commit -a -m "Generated content." &> /dev/null && \
	git push -f $(REPO) master:master
