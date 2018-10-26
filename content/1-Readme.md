# Readme

% ju -- https://bw1.eu -- 26-Okt-18  -- Readme.md

## Hinweis

Projekt getestet unter Win10

## Software

Pandoc: <https://pandoc.org/installing.html>

Latex: <https://www.tug.org/texlive/acquire-netinstall.html>

~~~
  # Shell: TeXlive update
  tlmgr update --all
~~~

Editor: <https://code.visualstudio.com/download>

~~~
  # Editor visual studio code
  # Datei / einstellungen / User settings
  {
    "powershell.powerShellExePath": "C:\\PowerShell6\\6\\pwsh.exe",
    "php.executablePath": "C:/xampp/php/php.exe",
    "python.pythonPath": "C:\\Python37\\python.exe",
    "editor.tabSize": 2,   // tabulator        
    "files.eol": "\n",     // LF Linux
    "files.encoding": "utf8", //coding    
    "files.autoSave": "afterDelay",//speichern
    "files.autoSaveDelay": 2000, //2s 
    "editor.fontSize": 17,
    "workbench.colorTheme": "Visual Studio Dark",
    "window.zoomLevel": 0,
  }
~~~

Git: <https://git-scm.com/downloads>

~~~
  # Shell: Git version
  git --version
~~~

Imagemagick: <https://www.imagemagick.org/script/download.php#windows>


## Repository raspberryPi von Github downloaden

~~~
  # Shell: Kopie downloaden
  $ git clone https://github.com/ju-bw/raspberryPi.git .
~~~

## neues Repository auf github anlegen

~~~
  # https://github.com/new
  # github: Create a new repository
  # Repository name = raspberryPi
  # Shell: Git Befehle
  # ".gitconfig", ".gitignore" konfigurieren und erstellen
  git init
  git add .
  git commit -am "Projekt start"
  git remote add origin https://github.com/ju-bw/raspberryPi.git
  git push -u origin master 
  git status
  git pull
  git push
  git log --oneline  # less beenden mit <Shift+q>
  git log --graph --oneline 
  git log --graph --pretty=format:";  %cn;  %h;  %ad;  %s" --date=relative > log.txt 
~~~

## Markdown Dokumente / Notizen

Markdown Dokumente / Notizen im Ordner "md/neu.md" erstellen.

Beachte das *min. zwei Markdowndateien* vorhanden sein müssen. 

**Powershellscript** "docKonverter-v02.ps1" erstellt LaTeX - pdf und html files.

~~~
  # Editor - Powershellscript "docKonverter-v02.ps1" anpassen
    ### Projekt
    # anpassen
    $thema = "raspberryPi" # Thema
    $bildformat = "svg"    # Bildformate: svg, jpg, png
    $codeformat = "sh"     # Codeformate: c, cpp, sh, py, ps1
    $language = "Powershell"   # Latex-Code:  C, [LaTeX]TeX, Bash, Python, Powershell
  # Shell: Script ausfuehren
  $ ./docKonverter-v02.ps1
~~~

## Bilder optimieren

**JPG Bilder** in den Ordner "imgOriginal/" kopieren.

**Powershellscript** "#imgWeb.ps1" optimiert Fotos für das Web und die PDF Datei.

~~~
  # Shell: Script ausfuehren
  $ ./imgWeb.ps1
~~~