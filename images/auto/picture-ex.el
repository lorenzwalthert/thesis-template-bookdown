(TeX-add-style-hook "picture-ex"
 (lambda ()
    (LaTeX-add-labels
     "fig:testfig")
    (TeX-run-style-hooks
     "inputenc"
     "utf8"
     "texab"
     "graphicx"
     "latex2e"
     "art11"
     "article"
     "11pt"
     "a4paper")))

