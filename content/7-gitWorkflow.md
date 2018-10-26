# Git Workflow

% ju - 26.10.18

## git log

~~~ 
  git log --oneline  # less beenden mit <Shift+q>
  git log --graph
  git log --graph --decorate --pretty=oneline --abbrev-commit 
  git log --graph --decorate --pretty=format:"%ad; %h; %s" --no-merges --date=short > log.txt
~~~

## branch erstellen - wechseln - löschen

~~~
  git branch
  git checkout -b entwicklung # erstellen u. wechseln 
  git checkout master         # wechsel auf master
  git checkout entwicklung    # wechsel auf entwicklung
  git branch -d entwicklung   # loeschen
~~~

## Entwicklungs Zweig

rasperryPi neu erstellen

~~~
  # git config u. .gitignore
  # +++ files erstellen
  git init
  git status
  git add . # lokale aenderungen
  git commit -am"rasperryPi start"
  # Entwicklungszweig erstellen u. wechseln
  git checkout -b entwicklung 
  git log --oneline
    b7a87de (HEAD -> entwicklung, master) rasperryPi start
~~~

**rasperryPi bearbeiten**

~~~
  git branch
    * entwicklung
      master
  # auf "entwicklung" branch wechseln    
  git checkout entwicklung    # wechsel auf entwicklung
  # +++ files bearbeiten
  git status
  git add . # lokale aenderungen
  git commit -am"kommentar"
  git branch
  git checkout master         # wechsel auf master
  git log --oneline
  #git diff file
  git merge entwicklung       # zusammenfuehren
  git log --oneline
~~~

**Version erstellen**

~~~
  # auf "master" branch wechseln
  git tag v-01 letzter commit
~~~

**Letzter Stand rückgängig machen**

~~~
  git log --oneline
  git revert "letzterCommit"
  git reset --hard "zielCommit"
~~~

## Arbeiten im Team

### lokaler Server 

lokales Repository erstellen (zentrales Repository)

~~~
  # auf "master" branch wechseln
  git clone --bare . ../rasperryPi.git
  git status
  # aenderungen veroeffentlichen
  git pull ../rasperryPi.git master
  git push ../rasperryPi.git master
  git log --oneline
    f3d7d67 (HEAD -> master) Merge branch 'entwicklung'
~~~

Arbeitskopie erstellen

~~~
  git clone ../rasperryPi.git .
~~~

### github Server

Remote Repository auf github erstellen

<https://github.com/ju-bw?tab=repositories>

~~~
  # auf "master" branch wechseln
  # aenderungen veroeffentlichen
  git remote add origin https://github.com/ju-bw/rasperryPi.git
  git push -u origin master
  git status
  git pull
  git push
  git log --oneline
    f3d7d67 (HEAD -> master, origin/master) Merge branch 'entwicklung'
~~~

Arbeitskopie erstellen

~~~
  git clone https://github.com/ju-bw/rasperryPi.git .
~~~

