# FIBO-KMUTT-Thesis-Template
FIBO KMUTT Thesis Template with LaTeX

### How to install in linux (Ubuntu)

```
$ sudo apt install texlive-xetex
```
### Install font TH Sarabun New
download -> http://www.f0nt.com/release/th-sarabun-new/

how -> http://ubuntuhandbook.org/index.php/2016/05/manually-install-fonts-ubuntu-16-04/

### Setting in vscode

```
"latex-workshop.latex.tools": [
        {
            "name": "latexmk",
            "command": "xelatex",
            "args": [
                "%DOC%"
            ]
        },
        {
            "name": "pdflatex",
            "command": "pdflatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "%DOC%"
            ]
        },
        {
            "name": "bibtex",
            "command": "bibtex",
            "args": [
                "%DOCFILE%"
            ]
        }
    ]
```