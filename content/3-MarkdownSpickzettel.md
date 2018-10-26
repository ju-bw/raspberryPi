# Markdown - Syntax

## Überschrift

~~~
	# Überschrift
	## Überschrift 2
	### Überschrift 3
~~~

## Bild

![Logo](img/logo.pdf)

~~~
	# bild
	![Logo](img/logo.pdf)
~~~


## Tabelle

|**Nr.**|**Begriffe**|**Erklärung**|
|------:|:-----------|:------------|
| 1     | a1         | a2		   		 |
| 2     | b1         | b2		       |
| 3     | c1         | c2		       |
| 4     | a1         | a2		       |

~~~
	# tabelle
	|**Nr.**|**Begriffe**|**Erklärung**|
	|------:|:-----------|:------------|
	| 1     | a1         | a2		   		 |
	| 2     | b1         | b2		       |
	| 3     | c1         | c2		       |
	| 4     | a1         | a2		       |
~~~

## Mathe

$[ V ] = [ \Omega ] \cdot [ A ]$ o. $U = R \cdot I$ o. $R = \frac{U}{I}$

~~~
	# Mathe
	$[ V ] = [ \Omega ] \cdot [ A ]$ o. $U = R \cdot I$ o. $R = \frac{U}{I}$
~~~


**Matheumgebung:**

\begin{align*}
	\sum_{i=1}^5 a_i = a_1 + a_2 + a_3 + a_4 + a_5
\end{align*}

~~~
	# Matheumgebung
	\begin{align*}
		\sum_{i=1}^5 a_i = a_1 + a_2 + a_3 + a_4 + a_5
	\end{align*}
~~~


## Absätze

Dies hier ist ein Blindtext zum Testen von Textausgaben. Wer diesen Text liest, 
ist selbst schuld. Der Text gibt lediglich den Grauwert der Schrift an. 
Ist das wirklich so? Ist es gleichgültig, ob ich schreibe: "Dies ist ein Blindtext" 
oder "Huardest gefburn"? Kjift - mitnichten! Ein Blindtext bietet mir wichtige Informationen.

Dies hier ist ein Blindtext zum Testen von Textausgaben. Wer diesen Text liest, 
ist selbst schuld. Der Text gibt lediglich den Grauwert der Schrift an. 
Ist das wirklich so? Ist es gleichgültig, ob ich schreibe: "Dies ist ein Blindtext" 
oder "Huardest gefburn"? Kjift - mitnichten! Ein Blindtext bietet mir wichtige Informationen.

## Listen

**ungeordnete Liste**

- a
- b
	- bb
- c

~~~
	# ungeordnete Liste
	- a
	- b
		- bb
	- c
~~~

**Sortierte Liste**

1. eins
2. zwei
3. drei

~~~
	# Sortierte Liste
	1. eins
	2. zwei
	3. drei
~~~

**Sortierte Liste**

a) a
b) b
c) c

~~~
	# Sortierte Liste
	a) a
	b) b
	c) c
~~~

## Anführungszeichen

"Anführungszeichen" oder \flqq Anführungszeichen\frqq   oder \frqq Anführungszeichen\flqq

~~~
	# Anführungszeichen
	"Anführungszeichen" oder 
	\flqq Anführungszeichen\frqq   oder 
	\frqq Anführungszeichen\flqq
~~~

## Quellenangabe

Quelle \textcite{schlosser_latex:2016}

Quelle Text\footfullcite{schlosser_latex:2016}

Quelle \cite{schlosser_latex:2016}

~~~
	# Quellenangabe
	Quelle \textcite{schlosser_latex:2016}
	Quelle Text\footfullcite{schlosser_latex:2016}
	Quelle \cite{schlosser_latex:2016}
~~~