# From GenAI Practice Vacuum to Validated Guidance

**A Delphi Study of AI-Augmented Reference Architecture Development**

Master thesis for the Executive Master of Enterprise IT Architecture (MSc) at
[Antwerp Management School](https://www.antwerpmanagementschool.be/en/program/executive-master-digital-leadership-and-transformation/major-enterprise-it-architecture),
Faculty Enterprise Engineering.

- **Author:** Thiago A. de Faria
- **Supervisors:** Prof. Dr. Ing. Hans Mulder · Victor van Reijswoud, PhD · Edzo A. Botjes MSc
- **DOI:** [10.5281/zenodo.18367977](https://doi.org/10.5281/zenodo.18367977)
- **License:** [CC BY-SA 4.0](LICENSE)

## Abstract

Generative AI (GenAI) is rapidly integrating into professional knowledge work and
software development. Enterprise Architecture (EA) practitioners are using GenAI to
analyze systems, draft documentation, and develop Reference Architectures (RAs). Yet no
empirical research documents these emerging practices, and no shared guidance exists.

This study uses distributed cognition as its integrating lens to examine how cognitive
work redistributes when GenAI enters RA development. It reviews the literature on EA, RAs,
GenAI capabilities, and distributed cognition to build a conceptual model, then conducts a
three-round Design-Oriented Delphi study with EA practitioners to validate emerging
practices and produce a guidance artifact. The central finding is that GenAI acts as a new
cognitive partner in the distributed system of EA practice: practitioners delegate
information compression and first drafts while retaining architectural judgment and
stakeholder decisions, shifting from content creator to output curator.

## Repository contents

```
thesis_final.tex          Main LaTeX driver
sections/                 Thesis body (frontmatter + sections 01–08)
sections/appendix/        Appendices A (GenAI usage), B (workbook), C (checklists)
images/                   Figures and cover art
references/               Bibliography (BibLaTeX / biber, APA style)
guidance-artifact.yaml    Machine-readable companion to the guidance artifact
thesis_final.pdf          Compiled thesis
Makefile                  Build automation
```

The [`guidance-artifact.yaml`](guidance-artifact.yaml) file is the machine-readable
companion to the guidance artifact presented in the thesis, intended for programmatic
adoption (tooling integration, automated checks, structured queries).

## Building the PDF

**Prerequisites:** a TeX distribution (e.g. TeX Live / MacTeX) providing `pdflatex` and
`biber`, plus the `biblatex` package.

With `make`:

```bash
make          # builds thesis_final.pdf
make clean    # removes LaTeX build artifacts
```

Or run the passes manually (the extra passes resolve the bibliography and cross-references):

```bash
pdflatex thesis_final
biber     thesis_final
pdflatex thesis_final
pdflatex thesis_final
```

## Citation

```bibtex
@mastersthesis{defaria2026genai,
  author = {de Faria, Thiago A.},
  title  = {From GenAI Practice Vacuum to Validated Guidance: A Delphi Study of
            AI-Augmented Reference Architecture Development},
  school = {Antwerp Management School},
  year   = {2026},
  type   = {Master of Enterprise IT Architecture (MSc) thesis},
  doi    = {10.5281/zenodo.18367977}
}
```
