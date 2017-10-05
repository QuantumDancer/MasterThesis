.PHONY: default
default:
	@echo "please specify a target"

%.pdf: %.tex
	latexmk -pdf -shell-escape $<

.PHONY: clean
clean:
	rm -rf *.aux
	rm -rf *.fdb_latexmk
	rm -rf *.fls
	rm -rf *.log
	rm -rf *.mp
	rm -rf *.t1
	rm -rf *.1

.PHONY: remove
remove: clean
	rm -rf *.pdf
