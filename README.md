
<!-- README.md is generated from README.Rmd. Please edit that file -->

# A few words from the authors

This repository is a bookdown template, derived from the LaTeX template
from the semiar for statistics, ETH Zurich.

**How bookdown works**

In a nutshell, bookdown works as follows:

  - use knitr to convert Rmd to markdown.
  - use pandoc to convert markdown to latex, pdf, word, html books (with
    featuers like font size, background selection, full text search
    etc), epub.

The basic workflow in RStudio is as follows:

  - Open the RStudio project.
  - Change a source file: In our template, the source of the body of the
    thesis is under `./rmd/`. For example, change `02-features.Rmd`. To
    make sure only files from this directory are used, get the devel
    versio of bookdown and add a corresponding confirugartion (for
    details, see <https://github.com/rstudio/bookdown/issues/242>).
  - Re-compile the book using Cmd + Shift + B (for build) on a Mac and
    Ctrl + Shift + B on Windows / Linux.
  - You can customize the build in the RStudio Build Tab, where you can
    specify which output (html, pdf, etc.) you want to generate. This is
    remembered for the next build you are doing.

**Getting started**

Fork the upstream repository and clone the fork. Then, you will have one
remote repository: origin, which refers to the fork. Add the upstream
repo as an upstream remote so you can later rebase on it in case you
need. We recommend using ssh over https.

If you are not familar with git, you can also simply download the repo.
However, we strongly recommend using version control for your thesis.

**Why using bookdown**

The advantages of using bookdown instead of plain LaTeX are, in the eyes
of the creator of this template:

  - Generalization. Not just latex or PDF output, but any output
    supported by Pandoc, e.g. Word and html, epub. If you at some point
    decide to work with LaTeX only, just render to LaTeX and continue.
    You don’t loose anything compared to status quo.
  - The best of two worlds. Use intuitive markdown syntax where
    possible, use the full power of LaTeX syntax where needed. This
    includes bibtex reference, LaTeX cross-, text- and figure reference.
  - It’s native R. Integrate R code and R output such as plots, tables,
    figures directly in your writing has never been easier than with
    bookdown. You can turn a data frame into a latex table using the
    power of R packages such as `kableExtra`. You can change the data
    subset, re-compile the whole book and all figures, tables and other
    data dependent elements will be udpated.
  - The power of RStudio. Use the same IDE for programming and writing.
    Leverage the advantages of a real-time latex equation previewer
    right in your R Markdown, a git GUI, spell checking, file browser
    and more.
  - You can also use other languages supported by knitr such as python,
    stan etc. You can even use R code to control the behavior of chunk
    evaluation. Below, we even used the bash command `tree` to show the
    directory structure of this repo. Since unicode is not suppored with
    pdflatex, we used R code to tell knitr to use the tree command with
    the option `charset unicode` for pdf output and without it for html
    output. Check the Rmd source of the README to learn more.
  - Because it’s native R, you can place R variables in the floating
    text. Check out the Rmd source of this document to see that we used
    R to compute the square root of three (1.7320508), print todays date
    with `Sys.Date()` right into the text: 2018-12-11

**How this template works**

There are different directories in this template:

``` bash
tree -d -L 2 --charset unicode
#> .
#> |-- _book
#> |   |-- figures
#> |   |-- libs
#> |   |-- man
#> |   `-- thesis_SfS_files
#> |-- _bookdown_files
#> |-- bib
#> |-- figure
#> |-- figures
#> |-- images
#> |   `-- auto
#> |-- pdf
#> |-- rmd
#> |-- scratch
#> |-- style
#> `-- tex
#> 
#> 16 directories
```

  - \_book: Contains the compiled book, e.g. a PDF or html version.
  - \_bib: Contains BibTeX reference data bases.
  - figure: Contains figures you created from your (R) code in the rmd
    source.
  - images: Put images you want to include in your thesis in this
    folder.
  - pdf: Put PDFs you want to include in your thesis in this folder.
  - rmd: The source folder of thesis. When you build a book, the
    following happens: By default, all rmd files in this folder get
    merged into one big rmd file, according to their name. We suggest to
    use one file per chapter. Then, the file containing all the rmd
    sources will get processed by knitr and later by Pandoc.
  - scratch: A random directory which is not tracked by git by default.
    The idea is that you can put things that are not ready to commit or
    that have a temporary character here.
  - style: Latex .sty files. Taken from the sfs LaTeX template.
  - tex: All tex data, most importantly, the sfs LaTeX template itself.
    Note that the abstract, preface, epilogue, summary, notation are
    still in tex, i.e. you need to change these files if you want the
    PDF output to change. This will **not** affect the html output. You
    can create chapters that show up in a particular output and not in
    the other forms as shown in `rmd/99-references.Rmd`.

Furthermore, we want to highlight a few files in the root directory of
the project:

  - `DESCRIPTION`: You can use it to declare dependent packages of your
    thesis in the `Imports:` field. If someone want’s to rebuild you
    thesis from scratch, the can use `remotes::install_deps()` to
    satisfy all R package dependencies.
  - `index.Rmd`: Contains a YAML header where a few important variables
    are defined. You can also put markdown below the header.
  - `README.(R)md`: This document.
  - `thesis-template-bookdown.Rproj`: An RStudio project. We recommend
    using RStudio for authoring your master thesis with bookdown.

**A few recommendations**

  - We strongly suggest to use a different folder for the data / code of
    your thesis and reserve this directory for the thesis document only.
    You can reaname this directory `analysis-communication` (since this
    will be the means used for communicating the results and process of
    your thesis) and use `analysis-raw` for the code and `data` for all
    data. Ideally, you place them in the same directory so you can still
    work with relative paths, e.g. `../data`.
  - We suggest to use git version control for the thesis and the raw
    analsyis.
  - If your thesis is open source, you can use netlify.com to deploy it,
    i.e. for every commit you push to a remote repo like GitHub, you can
    use netlify’s CLI to build your book on a CI machine like travis.
    See file `travis.yml` for the bookdown book [Advanced
    R](https://github.com/hadley/adv-r/tree/88dcb07e2b2ae634af6cdeafff2f3ea976077064)
    for an example. That makes tracking the `_book` folder in git
    redundant.

**Further material**

This is obviously a very short introduction to the template and it is in
no way comprehensive. To learn more about bookdown, we encourage the
reader to have a look at the [bookdown
guide](https://bookdown.org/yihui/bookdown/) as well as searching
through stack overflow / Google for particular questions. In addition,
inspect the different files in this repo, in particular the ones in the
rmd directory to develop a deeper understanding of the template.

As of early 2018, this template is still in alpha testing phase, so you
may experience unexpected behavior. Please file an issue on the git
repository where you have obtained the source of this template in case
you are stuck for some time with a problem or if you found a solution to
a problem you believe others are likely to encounter in the future. Pull
requests on typos are also welcome. We want to make sure that students
working this template have a great experience writing their master
thesis.

Best,

Nicola Gnecco and Lorenz Walthert
