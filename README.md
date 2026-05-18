# SCDT

This repository is set up to build a CVPR26 thesis draft from `thesis/main.tex`.

## Local build

Prerequisite: install a LaTeX distribution that provides `pdflatex`.

```bash
make thesis
```

Output: `thesis/main.pdf`

## CI build

A GitHub Actions workflow (`.github/workflows/build-thesis.yml`) builds `thesis/main.tex`
on pushes/PRs and uploads the generated PDF as an artifact (`cvpr26-thesis-pdf`).
