# Uthai-Report
Uthai hardware report thesis latex

install latex
```
sudo apt install texlive-xetex
```

install font
```
font thsarabun new 
```

"latex-workshop.latex.tools": [
        {
            "name": "xelatex",
            "command": "xelatex",
            "args": [
                "-pdf",
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
