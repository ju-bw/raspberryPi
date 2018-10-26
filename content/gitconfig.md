# Git Konfiguration

Git Bash unter Win10

~~~
  # work
  cd /c/projekte/python/ralphSteyer-python-lernen/doc

  # --global: Datei /C/Users/jan/.gitconfig
  ls /C/Users/jan/.gitconfig
  vi /C/Users/jan/.gitconfig
~~~

## Konfiguration

~~~
  # --global: Datei /C/Users/jan/.gitconfig
  git config --global user.name "Jan Unger"
  git config --global user.email info@gmail.com
  # editor
  git config --global core.editor vim
  # Zeilenende LF
  git config --global core.autocrlf input
~~~

## .gitconfig

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