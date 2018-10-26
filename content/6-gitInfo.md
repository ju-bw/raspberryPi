# Git

% ju -- https://bw1.eu/ -- 8-Okt-18 -- gitInfo.md

## Git unter Win10 installieren

<https://git-scm.com/download/win>

~~~
  git --version
~~~

## Git Bash unter Win10

git config

~~~
  // git config
  git config --global user.name "Jan Unger"
  git config --global user.email "info@bw1.eu"
  git config -l
~~~

Inhalt von **git config** 

~~~ 
  # --global: Datei /C/Users/jan/.gitconfig
  [user]
    name = Jan Unger 
    email = info@bw1.eu

  [color]
    ui = auto
    [color "branch"]
      current = yellow reverse
      local = yellow
      remote = green
    [color "diff"]
      meta = yellow bold
      frag = magenta bold
      old = red bold
      new = green bold
    [color "status"]
      added = green
      changed = yellow
      untracked = cyan

  [alias]
    cm = commit
    co = checkout
    st = status
    hit = reset   # git hit HEAD --hard
    lol = log --graph --decorate --pretty=oneline --abbrev-commit
    loa = log --graph --decorate --pretty=oneline --abbrev-commit --all
    lon = log --oneline --graph


  [push]
    default = matching

  [core]
    editor = vim
    autocrlf = input # unter win10 Zeilenende LF (Linux)
~~~

## .gitignore  

~~~
  # ju -- https://bw1.eu -- 10-Okt-18  -- .gitignore                                                                   
  # ordner/
  # !file.md = Ausnahme, wird versioniert

  !.gitignore



  #*.pdf
  #*.jpg

  *.exe
  *.x

  # ordner
  #docx/             # Word                                                           
  html/                                                                                                                                                
  imgOriginal/                                                                 
  imgWebTex/                                                                                                                                           
  pdf/                                                                         
  tex/

  # HTML                                                                                                                               
  *.html                                                                   

  # Latex
  *-main.tex
  *-book.tex
  *-print.tex
  *.log
  *.out
  *.aux 
  *.synctex*
  *.bbl
  *.bcf
  *.blg
  *.run*
~~~

## Ein Repository erzeugen (init, status) 

~~~
  $ git init
  $ git status
~~~

## aenderungen am Projekt (status, gitignore, add)

~~~
  $ git status
  touch .gitignore
  $ git add .
~~~

## aenderungen aufzeichnen (commit)

~~~
  git status
  git commit -m "Projekt initialisieren"
~~~

## Neue aenderungen anschauen und speichern (diff, commit)

~~~
  touch README
  git status
  git add README
  git commit -m "README hinzugefuegt"
  git status
  git diff git-info.md
  git commit -am "git commit"
~~~

## Die Historie aller commits anzeigen (log)

~~~
  git status
  git log
  git log -p
  git log -p -2
  git log --pretty=format:"%h %s"
~~~

## Nachtraegliche Inhalt entfernen oder umbenennen (rm, mv) 

~~~
  # neue Datei anlegen
  git status
  touch README.txt
  git status
  git add README.txt
  git commit -am "README.txt hinzugefuegt"
  git status

  # datei aus Repo loeschen
  git rm --cached "README.txt"
  git commit -am "README.txt aus Repo entfernt"
  # von HDD loeschen
  rm README.txt

  # README umbenennen
  git mv README README.txt
  git commit -m "README.txt umbenannt"  

  # git-info.md aus Repo entfernen
  git status
  git rm --cached "git-info.md"
  git commit -m "git-info.md aus Repo entfernt"
  git status
  vi .gitignore
  git commit -am ".gitignore git-info.md hinzugefuegt"
  git status
  git log
~~~

## aenderungen zuruecknehmen (reset, checkout)

~~~
  # README.txt aendern
  vi README.txt
  git status
  git diff README.txt
  # aenderungen zuruecknehmen
  git checkout README.txt
  git diff README.txt
  git status
  # vorsicht!!!
  git reset --hard 3fb9a5fe
~~~

## Git Hosting: GitHub 

<https://github.com/ju-bw/>


## neues Repository auf github anlegen

~~~
  # https://github.com/new
  # github: Create a new repository
  # Repository name = Projektname
  # Shell: Git Befehle
  # "git config" und ".gitignore" erstellen
  $ git init
  $ git add .
  $ git commit -am "Projekt initialisieren"
  $ git remote add origin https://github.com/ju-bw/Projektname.git
  $ git push -u origin master
  $ git status
  $ git pull
  $ git push
  $ git status
~~~

## Repositories auf entfernten Servern (clone, remote, push, pull) 

Entwickler A: 

~~~
  # Entwickler A: 
  $ Shell oeffnen
  pwd
  cd C:\projekte\python\ralphSteyer-python-lernen\doc
  ls 
  git status
  edit file
  git add .
  git commit -am "EntwicklerA"
  git pull
  git push
  git status
  git remote -v
~~~

Entwickler B:

~~~
  # Entwickler B: 
  $ Shell oeffnen
  pwd
  cd C:\projekte\python\ralphSteyer-python-lernen\doc2
  git clone https://github.com/ju-bw/Projektname.git .
  ls 
  git status
  edit file
  git add .
  git commit -am "EntwicklerB"
  git status
  git pull
  git push
  git status
~~~

## git merge, git branch




## Git-Befehle

**starte ein Repository**

~~~
  # starte eine Repository
  clone      Klone ein Repository in ein neues Verzeichnis
  init       Erstelle  ein leeres Git-Repository oder reinitialisiere ein bestehendes
~~~

**arbeite an der aktuellen aenderung** 

~~~
  # arbeite an der aktuellen aenderung
  add        Hinzufuegen von Dateiinhalten zum Index
  mv         Verschieben oder benenne  eine Datei, ein Verzeichnis oder einen Symlink um
  reset      Setze  den aktuellen HEAD auf den angegebenen Status zurueck
  rm         Entferne  Dateien aus dem Arbeitsbaum und aus dem Index
~~~

**Untersuche die History und den Zustand** 

~~~
  # Untersuche die History und den Zustand
  grep       Zeilen drucken, die mit einem Muster uebereinstimmen
  log        Zeige Commit-Protokolle
  show       Zeige verschiedene Arten von Objekten
  status     Zeigt den Status des Arbeitsbaums an
~~~

**markiere und optimiere gemeinsame History**

~~~
  # markiere und optimiere gemeinsame History
  branch     Listet Zweige auf, erstellt oder loescht sie
  checkout   Verzweigen oder Wiederherstellen funktionierender Baumdateien
  commit     Datensatzaenderungen am Repository
  diff       Zeigt aenderungen zwischen Commits, Commit und Arbeitsbaum etc
  merge      Verbinde zwei oder mehr Entwicklungshistorien miteinander
~~~

**zusammenarbeiten** 

~~~
  # zusammenarbeiten
  pull       von einem anderen Repository oder einem lokalen Zweig integrieren
  push       Aktualisiere Remote-Refs zusammen mit zugehoerigen Objekten
  fetch      Downloade Objekte und Referenzen aus einem anderen Repository
~~~
