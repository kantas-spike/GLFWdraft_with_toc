BUILD_DIR := ./build
OUTLINE_TOOL_DIR := $(BUILD_DIR)/pdfoutline
TOC_FILE := ./toc.txt
OUTPUT_PDF := ./GLFWdraft_with_toc.pdf
INPUT_PDF := ./GLFWdraft.pdf

# for debug
QUIET = @

# commands
CURL = curl
GS = gs
GIT = git
PYTHON3 = python3

.PHONY: all
all: $(OUTPUT_PDF)

# add toc to combined pdf
$(OUTPUT_PDF): $(TOC_FILE) $(OUTLINE_TOOL_DIR) $(INPUT_PDF)
	$(PYTHON3) $(OUTLINE_TOOL_DIR)/pdfoutline.py $(INPUT_PDF) $(TOC_FILE) $@

$(INPUT_PDF):
	curl -LO https://tokoik.github.io/GLFWdraft.pdf

# clone tool
$(OUTLINE_TOOL_DIR):
	$(GIT) clone https://github.com/yutayamamoto/pdfoutline.git $@

# clean
.PHONY: clean
clean:
	rm $(OUTPUT_PDF)

.PHONY: clean-all
clean-all:
	rm -rf $(BUILD_DIR)
	rm $(INPUT_PDF)
	rm $(OUTPUT_PDF)
