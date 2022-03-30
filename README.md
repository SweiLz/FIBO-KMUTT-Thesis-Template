# FIBO-KMUTT-Thesis-Template
FIBO KMUTT Thesis Template with LaTeX

## Install Xetex

### Ubuntu
```
$ sudo apt install texlive-xetex
```

### Windows

Dowload MiKTeX https://miktex.org/download


## Install font TH Sarabun New
Font inside classes folder.

how -> http://ubuntuhandbook.org/index.php/2016/05/manually-install-fonts-ubuntu-16-04/

## Setting in VScode 

Install LaTeX Workshop (James Yu) extention.

Open setting.json then add this

```
"latex-workshop.latex.tools": [
        {
            "name": "xelatex",
            "command": "xelatex",
            "args": [
                // "-pdf",
                "%DOC%"
            ]
        }
    ],
"latex-workshop.latex.recipes": [
        {
            "name": "xelatex",
            "tools": [
                "xelatex"
            ]
        }
    ],
"latex-workshop.view.pdf.viewer": "tab"
