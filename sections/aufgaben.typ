#import "../utils.typ" : *

= Beispiel Aufgaben
== Allgemein
=== Zahlen wissenschaftlich korrekt darstellen
#colgreen("Mit expliziter Angabe des Messfehlers") und #colorange("ohne"):
$
2.521162 plus.minus 0.531 &= colgreen(2.52 plus.minus 0.53) &= colorange(2.5) \
161261 plus.minus 10000 &= colgreen(1.61 dot 105 plus.minus 0.10 dot 10^5) &= colorange(1.61 dot 10^5) \
613.627 plus.minus 1.4 &= colgreen(6.136 dot 102 plus.minus 0.014 dot 10^2) &= colorange(6.136 dot 10^2) \
1610.12 plus.minus 17 &= colgreen(1.610 dot 103 plus.minus 0.017 dot 10^3) &= colorange(1.610 dot 10^3) \
16.1612 plus.minus 8.7 &= colgreen(1.62 dot 101 plus.minus 0.87 dot 10^1) &= colorange(1.6 dot 10^1) \
870261 plus.minus 10125 &= colgreen(8.70 dot 105 plus.minus 0.10 dot 10^5) &= colorange(8.70 dot 10^5) \
870261 plus.minus 40125 &= colgreen(8.70 dot 105 plus.minus 0.40 dot 10^5) &= colorange(8.7 dot 10^5) 
$

== Kinematik
=== Zeit zwischen zwei Punkten
Berechnen Sie die Zeit, die ein Trolleybus für die Strecke von 600 m zwischen zwei Hal-
testellen benötigt, wenn die Anfahrbeschleunigung 1 m/s2, die Bremsverzögerung 0.75
m/s2 und die Geschwindigkeit während der gleichförmigen Bewegung 54 km/h beträgt.

1. Skizze erstellen und in Zonen aufteilen
#align(center, image("../figures/aufgaben4.png", width: 60%))

2. Gegebene Werte notieren
#table(
  columns: (auto, auto, auto, auto),
  inset: 4pt,
  fill: (_, row) => if row == 0 { gray },
  [Zone 0], [Zone 1], [Zone 2], [Zone 3],
  $ a_01=1 m/s^2 $, $ a_12=0 m/s^2 $, $ a_23=-0.75 m/s^2 $, $ a_32=0 m/s^2 $,
  $ r_0=0m $, $ r_1=? $, $ r_2=? $, $ r_3=600m $,
  $ v_0=0 m/s $, $ v_1 &=54 "km"/h \ &=15 m/s $, $ v_2 &=54 "km"/h \ &=15 m/s $, $ v_3=0 m/s $,
  $ t_0=0 s $, $ t_1=? $, $ t_2=? $,	$ t_3=? $
)

3. Fehlende Werte für Zone 1 berechnen in dem man Formeln umstellt
$
v_1&=v_0+a_01 dot t_1 \
t_1&=(v_1-v_0)/a_01 =(15 m/s-0 m/s)/(1 m/s^2 )=15s \
r_1&=r_0+v_0 dot t_1+1/2   dot a_01 dot t_1^2 \
&=0m+0 m/s dot 15 s+1/2 dot 1 m/s^2  dot (15m)^2=112.5m  
$
4. Nun müssen wir $t_3$ berechnen um damit dann r_2 berechnen zu können
$
t_3&=(0 m/s-15 m/s)/(-0.75 m/s^2 )=20s \
r_3&=r_2+v_2 dot t_3+1/2   dot a_23 dot t_3^2 \
r_2&=r_3-(v_2 dot t_3 )-(1/2   dot a_23 dot t_3^2 ) \
r_2&=600m-(15 m/s dot 20 s)-(1/2   dot -0.75 m/s^2  dot (20 s)^2 ) \ &=450m
$

5. $t_2$ berechnen
$
r_2&=r_1+v_1 dot t_2  colred(cancel(+ 1/2   dot a_12 dot t_2^2) "(fällt weg da" a_12=0")") \
t_2& =(r_2-r_1)/v_1 =(450m-112.5m)/(15 m/s)=22.5s
$
6. $t_"Total"$  berechnen
$
t_"Total" &=t_0+t_1+t_2+t_3 \
&=0s+15s+22.5s+20s=57.53 s
$

== Fussgänger und Radfahrer

== Kräfte
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

=== 2. Newtonsche Gesetz (Kräfte in Bewegung)
Ein Körper A der Masse $1 "kg"$ wird mit Hilfe eines masselosen Seils und einer masselosen,
reibunsgfreien Umlenkrolle durch einen Körper B der Masse $1.5 "kg"$ auf einer horizontalen
Ebene gezogen. Der Gleitreibungskoeffizient zwischen dem Körper A und der Ebene
beträgt $0.5$. Mit welcher Beschleunigung bewegen sich die beiden Körper und wie gross
ist die Kraft im Seil?

#align(center, image("../figures/aufgaben3.png", width: 50%))

1. Seilkraft für A und B bestimmen \ (#colred([Umlenkrolle lenkt $hat(r)$ um]))
$
&F_A=m_a dot a=F_S dot (vec(1,0))+F_R dot (vec(-1,0)) \
<=> &F_S=m_a dot a+μ dot F_N=m_a dot a+μ dot m_a dot g
$
#v(10pt)
$
&F_B=m_b dot a=F_G dot (vec(1,0))+F_S dot (vec(-1,0)) \
<=> &F_S=-m_b dot a+F_G=-m_b dot a+m_b dot g
$

2. Formeln gleichsetzen und nach $a$ umstellen:
$
& m_a dot a+μ dot m_a dot g=-m_b dot a+m_b dot g \
<=> &a=frac(m_b dot g-μ dot m_a dot g, m_a+m_b) \
<=> &a = frac(1.5 dot 9.81-0.5 dot 1 dot 9.81, 1+1.5) = 3.92 m/s^2
$

3. Geschwindigeit in eine der Formeln einsetzen:
$
F_S &= m_a dot a+μ dot m_a dot g \ &= 1 dot 3.92+0.5 dot 1 dot 9.81=8.67 N
$

== Energie
=== Ballwurf mit Energieerhaltung
Ein Kind will einen Ball über eine 2m von ihm entfernte Mauer werfen. Die dazu minimal erforderliche Wurfhöhe ist 10m. Welches ist der minimal erforderliche Betrag der Geschwindigkeit, mit der der Junge den Ball abwerfen muss?

*Lösungsweg:*
1. In y-Richtung ($y = 10m$) gilt dank Energieerhaltung:
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



