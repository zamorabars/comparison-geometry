## How to build

The following command will create a local copy of the source code for you.

`git clone https://github.com/anton-petrunin/comparison-geometry.git`

Go into subfolder `comparison-geometry/mppics/`, run `mpost` come back to `comparison-geometry/` and run `pdflatex` and `biber`.

`cd comparison-geometry/mppics/`<br/>
`mpost pic`<br/>
`cd ..`<br/>
`pdflatex comparison-geometry.tex`<br/>
`biber comparison-geometry`<br/>
`pdflatex comparison-geometry.tex`<br/>
