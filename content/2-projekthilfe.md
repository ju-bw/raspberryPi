# Projekthilfe

% ju -- https://bw1.eu -- 10-Okt-18  -- projekthilfe.md


## Editor - Visual Studio Code 

Tastenkombination und Einstellungen

~~~
  Editor - Visual Studio Code 
    - Shell öffnen: file Auswahl   <Alt+Strg+O>
    - mehrfaches Editieren         <Alt+Mausklick>
    - Einzug: 2 (Leerzeichen), Codierung: UTF-8, Zeilenende: LF (Linux)
~~~


## Befehle Pandoc

**Pandoc - universeller Dokumentenkonverter**

~~~
  $ # Shell oeffnen
  # Pandoc: dokumentenkonverter
  pandoc text.md -o text.pdf
  pandoc -s text.md -c main-design.css -o text-mit-css.html
  pandoc text.md -o text.html
  pandoc text.md -o text.tex
  # aufraeumen
  rm *.log
  rm *.out
  rm *.aux
  rm *.synctex.gz
~~~

## Dokumentenkonverter

**Latex**

pandoc text.md -o text.tex

~~~
  Editor "text.tex" oeffnen -> Suchen und Ersetzen
  TeXworks "dummy.tex" oeffnen -> pdflatex
~~~

**html**

~~~
  pandoc text.md -o text.html
~~~

**HTML5 mit CSS**

~~~
  pandoc -s text.md -c design.css -o text-mit-css.html
~~~

**pdf**

~~~
  pandoc text.md -o text.pdf
~~~

**Word**

~~~
  pandoc text.md -o text.docx
~~~

