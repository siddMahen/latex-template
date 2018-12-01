DIR=./LaTeX
OPS=render build clean

export DOC=doc
export VIEWER=Firefox

$(OPS):
	$(MAKE) $@ -C $(DIR)

mail: build
	open -a Mail $(DIR)/$(DOC).pdf

.PHONY: $(OPS)
