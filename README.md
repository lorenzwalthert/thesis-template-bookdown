
<!-- README.md is generated from README.Rmd. Please edit that file -->

# A few words from the authors

This repository is a bookdown template, derived from the LaTeX template
from the semiar for statistics, ETH Zurich.

**How bookdown works**

bookdown in general works as follows:

  - use knitr to convert Rmd to markdown.
  - use pandoc to convert markdown to latex, pdf, word, html books (with
    featuers like font size, background selection, full text search
    etc), epub.

The basic workflow is as follows:

  - Change a source file: In our template, the source of the body of the
    thesis is under `./rmd/`. For example, change `02-features.Rmd`
  - Re-compile the book using Cmd + Shift + B (for build) on a Mac and
    Ctrl + Shift + B on Windows / Linux.

**Why using bookdown**

The advantages of using bookdown instead of plain LaTeX are, in the eyes
of the creator of this template.

  - Generalization. Not just latex or PDF output, but any output
    supported by Pandoc.
  - The best of two worlds. Use intuitive markdown syntax where
    possible, use the full power of LaTeX syntax where needed. This
    includes a real-time latex equation previewer in RStudio, bibtex
    reference, LaTeX cross-, text- and figure reference.
  - It’s native R. Integrate R code and R output in your writing has
    never been easier than with bookdown. You can also use other
    languages supported by knitr such as python, stan etc.

**How this template works**

There ar different directories in this template.

``` bash
tree -d -L 2
#> .
#> ├── _book
#> │   ├── figures
#> │   ├── libs
#> │   ├── man
#> │   └── thesis_SfS_files
#> ├── _bookdown_files
#> │   └── thesis_SfS_files
#> ├── bib
#> ├── figure
#> ├── figures
#> ├── images
#> │   └── auto
#> ├── pdf
#> ├── rmd
#> ├── style
#> └── tex
#> 
#> 16 directories
```

  - \_book: Contains the compilied book, e.g. a PDF or html version.
  - \_bib: Contains bibtex reference data bases.
  - figure: Contains figures you created from your (R) code in the rmd
    source.
  - images: Put images you want to include in your thesis in tis folder.
  - pdf: Put PDFs you want to include in your thesis in tis folder.
  - rmd: The source folder of thesis. When you build a book, the
    following happens: By default, all rmd files in this folder get
    merged into one big rmd file, according to their name. We suggest to
    use one file per chapter. Then, the file containing all the rmd
    sources will get processed by knitr and later by pandoc.
  - style: Latex .sty files. Taken from the sfs LaTeX template.
  - tex: All tex data, most importantly, the sfs LaTeX template itself.
    Note that the abstract, preface, epilogue, summary, notation are
    still in tex, i.e. you need to change these files if you want the
    PDF output to change. This will **not** affect the html output. You
    can create chapters that show up in a particular output and not in
    the other forms as shown in `rmd/99-references.Rmd`.

Furthermore, we want to highlight a few files in the root directory of
the project:

  - DESCRIPTION: You can use it to delcare dependent packages of your
    thesis in the `Imports:` field. If someone want’s to rebuild you
    thesis from scratch, the can use `remotes::install_deps()` to
    safisfy all R package dependencies.
  - index.R: Contains a YAML header where a few important variables are
    defined. You can also put markdown below the HEADER.
  - README.(R)md This document.
  - thesis-template-bookdown.Rproj: An RStudio project. We recommend
    using RStudio for authoring your master thesis with bookdown.

This is obviously a very short introduction to the template and it is in
no way comprehensive. To learn more about bookdown, we encourage the
reader to have a look at the [bookdown
guide](https://bookdown.org/yihui/bookdown/) as well as searching
through stackoverflow / Google for particular questions. In addition,
inspect the different files in this repo, in particular the ones in the
rmd directory to develop a deeper understanding of the template.

As of early 2018, this template is still in alpha testing phase, so you
may experience unexpected behaviour. Please file an issue on the git
repository where you have obtained the source of this template in case
you are stuck for some time with a problem or if you found a solution to
a problem you believe others are likely to encounter in the future. We
want to make sure that students working this template have a great
experience writing their master thesis.

Best,

Nicola Gnecco and Lorenz Walthert
