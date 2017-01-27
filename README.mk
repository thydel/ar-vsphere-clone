#!/usr/bin/make -f

README.mk:;

md := README.md
html: $(md:%.md=%.html);
.PHONY: html

%.html: %.md; pandoc -s -o $@ $<
