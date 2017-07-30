# Directories
TEMPDIRS  	= build build/pdfs build/posts

# File Lists
MARKDOWN_FILES := $(shell find . -name '*.md')
PDFS = $(MARKDOWN_FILES:./%.md=./build/pdfs/%.pdf)
POSTS = $(MARKDOWN_FILES:./%.md=./build/posts/%.html)
DIR_FILE = './.dir_file'

# Targets
all: $(DIR_FILE) $(PDFS) $(POSTS)

$(DIR_FILE) :
	for dir in $(TEMPDIRS); do \
		mkdir -p $$dir ; \
	done
	@touch $@

build/pdfs/%.pdf : %.md
	pandoc -o $@ $<

build/posts/%.html : %.md
	pandoc -o $@ $<

# Phony Commands
.PHONY: clean
clean:
	rm -f -r build $(DIR_FILE)
