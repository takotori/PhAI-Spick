#import "../utils.typ" : *

= Weiteres
== Taschenrechner
- *Menu → 3 → 1* für solve()
- *Menu → 3 → 7 → 1* für Gleichungsystem lösen
- *doc → 7 → 2* für Umstellung von Grad auf Rad
- *Menu → 4 → 1* für Ableitungen

== Fundamentum Mathematik und Physik Inhalt
- *Trigometrie:* Seite 26
- *Ableitungen:* Seite 60
- *Kinematik:* Seite 81
- *Kräfte:* Seite 83
- *Energie:* Seite 85

== Aufgabenbeispiele
=== Ballwurf mit Energieerhaltung
Ein Kind will einen Ball über eine 2m von ihm entfernte Mauer werfen. Die dazu minimal erforderliche Wurfhöhe ist 10m. Welches ist der minimal erforderliche Betrag der Geschwindigkeit, mit der der Junge den Ball abwerfen muss?

*Lösungsweg:*
1. In y-Richtung ($y = 10m$)gilt dank Energieerhaltung:
$ 
1/2 m v_y^2 = m g y \
v_y = sqrt(2 g y) 
$

2. Die Flugzeit, bis die Geschwindigkeit in y-Richtung 0 ist, ist:
$
v_y &= g t "(Da freier Fall)"\
t &= v_y/g = sqrt(2 y/g)
$

3. In dieser Zeit muss der Ball die Distanz x ($x = 2m$) zurücklegen:
$
x = v_x t \
v_x = x/t = sqrt((g x^2) / (2 y))
$

4. Die gesuchte Geschwindigkeit ist:
$
v &= sqrt(v_x^2 + v_y^2) = sqrt((g x^2) / (2 y) + 2 g y) \ 
&= sqrt((9.81 m \/ s^2 dot 2^2 m^2) / (2 dot 10m) + 2 dot 9.81 m \/ s^2 * 10m) \
&= sqrt(198 m^2 \/ s^2)= 14 m \/ s
$

=== Komplexe Kräfteaufgabe
An der Spitze eines h = 8 m hohen Mastes üben die befestigten Leitungen die Zugkräfte
$F_1 = 4800 N, F_2 = 1200 N "und" F_3 = 2700 N$ aus. Der Winkel $alpha = 40^circle.small$ und $beta = 30^circle.small$. In
welcher Richtung $gamma$ muss ein l = 9.6 m langes schräges Drahtseil verankert werden, damit
an der Mastspitze keine horizontale Kraft wirksam wird? Wie gross ist die Zugkraft F
im Seil?

#image("../figures/aufgaben1.png")

Aus dem Seitenriss geht hervor, dass die Kraft F in eine horizontale (xy-Ebene) Kompo-
nente $F_"xy" = F cos delta$ und in eine vertikale (z-Richtung) Komponente $F_z = F sin delta$ zerlegt
werden kann. Somit:
#image("../figures/aufgaben2.png")

1. Gleichgewicht in x-Richtung:
$ - F_1  + F_2 cos(alpha) + F_3 cos(beta) + F cos(delta) cos(gamma) = 0 $

2. Gleichgewicht in y-Richtung:
$ F_2 sin(alpha) - F_3 sin(beta) + F cos(delta) sin (gamma) = 0 $

3. Gleichgewicht in z-Richtung:
$ F_M - F sin(delta) = 0 $

4. Daraus folgt aus X-Gleichung:
$ F cos(delta) cos(gamma) = colmagenta([F_1 - F_2 cos(alpha) - F_3 cos(beta)]) $

5. Daraus folgt aus Y-Gleichung:
$ F cos(delta) sin(gamma) = colblue({- F_2 sin(alpha) + F_3 sin(beta)}) $

6. Da $F^2 cos^2(delta) (sin^2(gamma) + cos^2(gamma)) = F^2 cos^2(delta)$ können wir die 2 Gleichungen quadrieren und zusammenzählen:
$ F^2 cos^2(delta) = colmagenta([ ])^2 + colblue({ })^2 $

7. Da $sin(delta) = h/l$ erhalten wir für den Cosinus:
$ cos^2(delta) = 1 - h^2/l^2 $

8. Die gesuchte Seilkraft F ist somit:
$ F = sqrt((colmagenta([ ])^2 + colblue({ })^2) / (1 - h^2/l^2)) = 3056 N $

9. Winkel $gamma$ erhalten wir als Quotient von Y und X-Gleichung:
$ gamma = arctan(colblue({ }) / colmagenta([ ])) = 17.3^circle.small $