#SHELL := bash
#.ONESHELL:
#.SHELLFLAGS := -eu -o pipefail

OUTDIR=_site

.PHONY: clean build

all: clean build

clean:
	rm -fv $(OUTDIR)/*.html

build:
	jinja2 index.j2 index.yaml > $(OUTDIR)/index.html
	jinja2 programme.j2 programme.yaml > $(OUTDIR)/programme.html
	jinja2 registration.j2 registration.yaml >$(OUTDIR)/registration.html
	jinja2 information.j2 information.yaml >$(OUTDIR)/information.html
