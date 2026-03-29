SRC_DIR  := src
HTML_DIR := html

MD_SRC   := $(shell find $(SRC_DIR) -name '*.md')
HTML_OUT := $(patsubst $(SRC_DIR)/%.md,$(HTML_DIR)/%.html,$(MD_SRC))

.PHONY: all clean rebuild

all: $(HTML_OUT)

$(HTML_DIR)/%.html: $(SRC_DIR)/%.md html-math.yml
	mkdir -p $(dir $@)
	pandoc $< --defaults=html-math.yml --lua-filter=md2html.lua -o $@

clean:
	rm -rf $(HTML_DIR)

rebuild: clean all
