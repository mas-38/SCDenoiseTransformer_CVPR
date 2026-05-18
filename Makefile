.PHONY: thesis clean

thesis:
	@command -v pdflatex >/dev/null 2>&1 || { echo "pdflatex is required. Install TeX Live first."; exit 1; }
	@mkdir -p thesis/build
	pdflatex -interaction=nonstopmode -halt-on-error -output-directory=thesis/build thesis/main.tex
	pdflatex -interaction=nonstopmode -halt-on-error -output-directory=thesis/build thesis/main.tex
	@cp thesis/build/main.pdf thesis/main.pdf
	@echo "Built thesis/main.pdf"

clean:
	rm -rf thesis/build thesis/main.pdf
