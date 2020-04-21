# Copyright (c) 2017-2020 Datalogisk Kantineforening

# Licensed under the EUPL v1.2: https://eupl.eu/1.2/en/

.PHONY: all clean

mkfilepath := $(abspath $(lastword $(MAKEFILE_LIST)))
dirpath := $(dir $(mkfilepath))

all: vedtaegter.pdf

%.pdf: %.tex
	@$(dirpath)latexrun $<

clean:
	rm -f *.pdf
