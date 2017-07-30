# Compiler Stuff
CC        	= g++
CFLAGS    	= -c -std=c++11 -stdlib=libc++ -Wall 
BISON 		= /usr/local/Cellar/bison/3.0.4/bin/bison
FLEX 		= flex

# Directories
TEMPDIRS  	= build build/pdfs build/posts

# File List/s
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

# Phony Command
.PHONY: clean
clean:
	rm -f -r build $(DIR_FILE)
