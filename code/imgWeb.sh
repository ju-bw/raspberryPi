# PowerShell Script:  ju -- https://bw1.eu -- 10-Okt-18  -- imgWeb.ps1
# Shell: Script ausfuehren
# $ ./#imgWeb.ps1

<#
  **JPG Bilder** in den Ordner "imgOriginal/" kopieren.
  **Powershellscript** "#imgWeb.ps1" optimiert Fotos für das Web und die PDF Datei.
#>

<#
  Editor - Visual Studio Code 
    - Shell öffnen: file Auswahl   <Alt+Strg+O>
    - mehrfaches Editieren         <Alt+Mausklick>
    - Einzug: 2 (Leerzeichen), Codierung: UTF-8, Zeilenende: LF (Linux)
#>

Clear-Host # cls

### Projektverzeichnis
# anpassen
#$work = "C:/projekte/"
#cd $work

### Zeit
#$timestampArchiv = Get-Date -Format 'yyyy-MMM-dd' # 2018-Okt-11
#$timestampArchiv = Get-Date -Format 'yMd'         # 181011
#$timestampFile = Get-Date -Format 'dd-MMM-yyyy'   # 11-Okt-2018
$timestampFile = Get-Date -Format 'd-MMM-y'       # 11-Okt-18
#
$autor = "ju -- https://bw1.eu -- $timestampFile"
$autor

#$aufloesung = '512x512' # anpassen!!!!!!!!
$aufloesungTex = '728x516'  # 1224x792 B5 = 728x516
$aufloesungWeb = '1920x1080' # 1920x1080 1280x1024 
$qualitaetWeb = '75%' # ImageMagik: 82% = Photoshop: 60%
$imgOriginal = 'imgOriginal'
$imgWebTex = 'imgWebTex'
$tmp = 'tmp'


# Usereingabe
"+++ Sind Bilder im Ordner '$imgOriginal' ?"
$var = Read-Host 'Eingabe - [j/n]' 
if($var -eq  "n"){# gleich
  "Script wird beendet"
  exit
}
else{
    "`n+++ Verzeichnis erstellen oder loeschen"
    # loescht ordner, wenn vorhanden, recursiv, schreibgeschützt, versteckt (unix)
    if (test-path $tmp) { remove-item $tmp -force -recurse} 
    if (test-path $imgWebTex) { remove-item $imgWebTex -force -recurse} 

    # ordner erstellen
    md $imgWebTex/$tmp
    md $imgWebTex/$aufloesungTex

    "`n+++ Kopie erstellen: $imgOriginal => $imgWebTex/$tmp"
    cp -Recurse -Force $imgOriginal/* $imgWebTex/$tmp

    cd $imgWebTex

    "+++ files umbennen"
    cd $tmp
    # Dateiendung
    ls -r | ren -NewName {$_.fullname -replace ".JPG", ".jpg"} -ea SilentlyContinue
    ls -r | ren -NewName {$_.fullname -replace ".jpeg", ".jpg"} -ea SilentlyContinue
    # Leerzeichen
    ls -r | ren -NewName {$_.name -replace "_", "-"} -ea SilentlyContinue
    ls -r | ren -NewName {$_.name -replace " ", ""} -ea SilentlyContinue
    # webserver
    #ls -r | ren -NewName {$_.name -replace "-", "_"} -ea SilentlyContinue
    # Umlaute
    # ergaenzen
    cd ..

    # Funktionen
    # Funktion: Bildqualitaet optimieren
    # Funktionsaufruf: imgOpti $out/ $qualitaet $in/*
    function imgOpti() {
        param ( 
            [string] $out, 
            [string] $aufloesung,
            [string] $qualitaet, 
            [string] $in
        )  
        #mogrify -path $out/ -resize 300 $in/*
        # Einstellungen mit Optimierung
        # automatisch drehen: -auto-orient
        mogrify -path $out/ -filter Triangle -define filter:support=2 -auto-orient  -thumbnail  $aufloesung  -unsharp 0.25x0.25+8+0.065  -dither None -posterize 136 -quality $qualitaet -define jpeg:fancy-upsampling=off -define png:compression-filter=5 -define png:compression-level=9 -define png:compression-strategy=1 -define png:exclude-chunk=all -interlace none -colorspace sRGB  -strip $in/*
    }


    # Funktion: Bildaufloesung aendern
    # Funktionsaufruf: imgResize $out/ $aufloesung $in/*
    function imgResize() {
        param ( 
            [string] $out, 
            [string] $aufloesung, 
            [string] $in
        )  
        #mogrify -path $out/ -resize 300 $in/*
        # Einstellungen mit Optimierung
        mogrify -path $out/ -thumbnail $aufloesung $in/*
    }

    "+++ pics umbenennen - Ordner-001.jpg"
    exiftool -P -fileOrder datetimeimgOriginal '-fileName<${directory}%-.3nc.%le' $tmp/* -r

    ### Web und Latex
    # Bildqualitaet optimieren
    # Funktionsaufruf: imgOpti $out/ $qualitaet $in/*
    "+++ Web - Bildaufloesung $aufloesungWeb Bildqualitaet  $qualitaetWeb"
    imgOpti ./ $aufloesungWeb $qualitaetWeb $tmp

    cd ..

    # Bildaufloesung aendern
    # Funktionsaufruf: imgResize $out/ $aufloesung $in/*
    "+++ LaTeX - Bildaufloesung $aufloesungTex"
    #imgResize "$imgWebTex/$aufloesung" $aufloesung $imgWebTex
    imgResize ./$imgWebTex/$aufloesungTex $aufloesungTex $imgWebTex

    cd $imgWebTex/

    "+++ LaTeX - Bilder in pdf umwandeln"
    mogrify -format pdf $aufloesungTex/*.jpg 
    cp $aufloesungTex/*.pdf ./

    # Komprimiert den Inhalt eines Verzeichnisses
    #ls $ordner | Compress-Archive -Update -dest "$archiv/$ordner.zip"

    # Kopie loeschen
    rm $tmp -force -recurse
    rm $aufloesungTex -force -recurse

    cd ..
}

