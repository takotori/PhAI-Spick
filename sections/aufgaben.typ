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

*Lösungsweg:*
1. Skizze erstellen und in Zonen aufteilen
#align(center, image("../figures/aufgaben4.png", width: 75%))

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

=== Fussgänger und Radfahrer
Ein Radfahrer und ein Fussgänger bewegen sich gleichzeitig von A nach B, wobei der eine
stündlich 5 km und der andere 15 km zurücklegt. Der Radfahrer hält sich eine Stunde in
B auf und trifft auf dem Rückweg den Fussgänger 30 km vor B entfernt. Wie gross ist die
Distanz zwischen A und B?

*Lösungsweg:*
1. s-t-Diagramm erstellen
#align(center, image("../figures/aufgaben5.png", width: 40%))

2. Formel für Zeit des Fussgänger, $t_F$ aufstellen.
$
t_F = frac(s_"AB" - Delta s, v_F)
$

3. Formel für Zeit des Radfahrer, $t_R$ aufstellen. \ ($Delta t$ = Pause 1h)
$
t_R = frac(s_"AB" + Delta s, v_R) + Delta t
$

4. Da gemäss s-t-Diagramm beide Zeiten gleich sind, können wir die beiden Gleichungen gleichsetzen und nach $S_"AB"$ umstellen.
$
t_F &= t_R \
frac(s_"AB" - Delta s, v_F) &= frac(s_"AB" + Delta s, v_R) + Delta t \
s_"AB" / v_F - s_"AB" / v_R &= Delta s / v_F + Delta s / v_R + Delta t \
s_"AB" (1/v_F - 1/v_R) &= Delta s (1/v_F + 1/v_R) + Delta t \
s_"AB" &= frac(Delta s (1/v_F + 1/v_R) + Delta t, 1/v_F - 1/v_R) \
s_"AB" &= frac(30 "km" (frac(1, 5 "km" h^"-1") + frac(1, 15 "km"  h^"-1")) + 1h, frac(1, 5 "km" h^"-1") + frac(1, 15 "km"  h^"-1")) \ &= 67.5 "km"
$

=== Schiefer Wurf
Ein Ball wird unter einem Winkel von 20° (notwendig) schräg nach unten geworfen (12m nach rechts und 7.5m nach unten). Mit welcher Anfangsgeschwindigkeit wurde der Ball geworfen?
#align(center, image("../figures/aufgaben6.png", width: 40%))

*Lösungsweg:*
1. Richtungsgleichung aufstellen
$
arrow(r) = arrow(r_0) + arrow(v_0) dot t + 1/2 dot arrow(a) dot t^2
$

2. Anfangsbedingungen festlegen beim Werfer
$
arrow(v_0) &= v_0 dot vec(cos(-20^circle.small), sin(-20^circle.small)) dot t \
arrow(r_0) &= vec(0, 0), 
arrow(r_1) = vec(12, -7.5) 
$

3. Bedinungen in die Richtungsgleichung einsetzen
$
vec(12, -7.5) = vec(0, 0) + v_0 dot vec(cos(-20^circle.small), sin(-20^circle.small)) dot t \ + 1/2 dot vec(0, -9.81) dot t^2
$

4. X-Gleichung nach $v_0 dot t = s_1$ auflösen
$
12 &= v_0 dot cos(-20^circle.small) dot t <=> v_0 dot t = 12 / cos(-20^circle.small) \ &= 12.77
$

5. Y-Gleichung nach $t$ auflösen
$
-7.5 &= v_0 dot sin(-20^circle.small) dot t + 1/2 dot -9.81 dot t^2 \
<=> t &= sqrt(frac(2 dot (7-5 - v_0 dot t dot sin(-20^circle.small)), 9.81)) = 0.8
$

6. Geschwindigkeit berrechnen
$
s_1 / t = v_0 = 12.77 / 0.8 = 16 m/s
$

=== Radialbeschleunigung
Ein Riesenrad hat eine Umlaufdauer von 12 s. Wie gross sind Geschwindigkeit und Radialbeschleunigung einer Person im Abstand von 5.6 m von der Drehachse?

*Lösungsweg:*
1. Tangentialgeschwindigkeit $v_T$ berechnen
$
v_T &= (Delta s) / (Delta t) &= frac(2 pi dot r, T) &= frac(2 pi dot 5.6 m, 12 s) &= 2.9 m s^"-1"
$

2. Radialbeschleunigung $a_T$ berechnen aus $v_T$
$
a_T &= (v_T^2) / r &= frac(4 pi^2 dot r, T^2) &= frac(4 pi^2 dot 5.6m, (12 s)^2) &= 1.5 m s^"-2"
$

=== Aufprallgeschwindigkeit
Aus welcher Höhe muss ein Mann herunterspringen, um den gleichen Aufprall zu erleben
wie ein landender Fallschirmspringer, dessen Sinkgeschwindigkeit 6 m/s beträgt ?

$
h = frac(v^2, 2 g) = frac(6^2, 2 dot 9.81) = 1.84 m
$

== Kräfte
=== Komplexe Kräfteaufgabe
An der Spitze eines h = 8 m hohen Mastes üben die befestigten Leitungen die Zugkräfte
$F_1 = 4800 N, F_2 = 1200 N "und" F_3 = 2700 N$ aus. Der Winkel $alpha = 40^circle.small$ und $beta = 30^circle.small$. In
welcher Richtung $gamma$ muss ein l = 9.6 m langes schräges Drahtseil verankert werden, damit
an der Mastspitze keine horizontale Kraft wirksam wird? Wie gross ist die Zugkraft F
im Seil?

#image("../figures/aufgaben1.png")

*Lösungsweg:*
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

*Lösungsweg:*
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
&= sqrt((9.81 m \/ s^2 dot 2^2 m^2) / (2 dot 10m) + 2 dot 9.81 m \/ s^2 * 10m)
$
$
= sqrt(198 m^2 \/ s^2)= 14 m \/ s
$

=== Fall auf eine Feder
Eine Masse von 12 kg fällt aus 70 cm Höhe auf eine gefederte Unterlage, deren Federkonstante 4000 N/m beträgt. Wieviel wird die Feder beim Aufprall zusammengedrückt?

*Lösungsweg:*
1. Energieerhaltungssatz anwenden und Gleichungsystem aufstellen
$
E_"pot" = E_"Feder" ==> m g (h +s) = (c s^2) / 2
$

2. Dies ergibt die quadratische Gleichung:
$
c/2 s^2 - m g s - m g h = 0
$

3. Die Lösung der quadratischen Gleichung ist:
$
s &= (m g) / c + sqrt(((m g) / c)^2 + 2 (m g h) / c) \ 
&= (12 dot 9.81) / 4000 + sqrt(((12 dot 9.81) / 4000)^2 + 2 (12 dot 9.81 dot 0.7) / 4000) \ 
&= 0.2345 = 23,5 "cm" 
$
== Arbeit / Leistung
=== Leistung einer Lokomotive
Welche Arbeit (in kWh) leistet eine Lokomotive, die einen Zug von Flüelen nach Göschenen zieht? Die totale Masse des Zuges beträgt $400 t = 400^'000 "kg"$, die Strecke 37 km, die Höhendifferenz 670 m und der Rollreibungskoeffizient 0.002. Der Luftwiderstand werde vernachlässigt.

*Lösungsweg:*
1. Winkel $alpha$ bestimmen mittels Trigometrie
$ sin(alpha)=(670m)/(37^' 000m) <=> alpha=1.04^circle.small $

2. Energieerhaltungssatz aufstellen
$
E=1/2 dot m dot v^2+m dot g dot h+(m dot g dot s dot cos(alpha) ) dot μ
$

3. EES Einsetzen am Anfang ($colgreen(v=0), colmagenta(h=0), colorange(s=0)$)
$
E_0&=1/2 dot m dot colgreen(0)^2+m dot g dot colmagenta(0)+(m dot g dot colorange(0) dot cos(alpha) ) dot μ \ &= 0
$

4. EES Einsetzen am Ende ($colgreen(v=0), colmagenta(h=670m), colorange(s=37^'000m)$)
$
E_1 &= 1/2 dot m dot colgreen(0)^2+m dot g dot colmagenta(670)+(m dot g dot colorange(37^'000) dot cos(alpha) ) dot μ \ 
&=2'919'408'166J 
$

5. Arbeit $W$ berechnen und in kWh umrechnen
$
W=E_0-E_1=(2'919'408'166J - 0J) / (3600s dot 1000) =810.97 "kWh"
$

=== Leistung eines Autos
Ein Auto braucht bei der Geschwindigkeit 80 km/h auf 100 km 8 Liter Benzin. Wie
gross ist der Fahrwiderstand (Rollreibung + Luftwiderstand), wenn der Wirkungsgrad
des Motors 20 % beträgt? Das Benzin hat eine Dichte von 700 kg/m3 und einen Heizwert
von 42 MJ/kg.

*Lösungsweg:*
$
P_"ab" = F * v, P_"zu" = rho.alt dot (d V) / (d t) "(Benzinvolumen)" dot H "(Heizwert)" \
P_"zu" = rho.alt dot (d V) / (d s) "(Literverbrauch)" dot (d s) / (d t) dot H = rho.alt dot (d V) / (d s) dot v dot H 
$
$
F &= P_"ab" / v = frac(eta dot P_"zu", v) = frac(eta dot rho.alt dot (d V)/(d s) dot H, v) \
F &= 0.2 dot 700 dot (8 dot 10^(-3) / 10^(-5) dot 42 dot 10^6) = 470 N
$
=== Pumpleistung
Welche Wassermenge pro Zeiteinheit fördert eine 4-kW-Pumpe in ein 45 m höher liegendes
Reservoir?

*Lösungsweg:*

Die an einem infinitesimalen Massen-Element $d m$ geleiste Arbeit $d W$ ist gleich seiner
Zunahme an potentieller Energie, also $d W = d m g h$. Somit ist die Leistung $P$ der Pumpe,
also die Arbeit pro Zeiteinheit:
$
P = (d W)/(d t) = (d m dot g dot h)/(d t) = rho.alt frac(d V, d t) dot g dot h
$

1. Formel nach $(d V )/ (d t) = dot(V)$ auflösen
$
(d V )/ (d t) &= P / (rho.alt g h) = (4'000 W) / (1'000 "kg"/m^3 dot 9.81 m/s^2 dot 45 m) = 9,061 dot 10^(-3) m^3/s \
dot(V) &= 9,061 s^(-1)
$

== Kosmologie
=== Satellit
==== Höhe eines geostationären Satelliten
Welcher Höhe muss Satellit auf Kreisbahn laufen, wenn er geostationär sein soll?
#grid(
  columns: (75%, auto),
  grid(
  columns: (auto, auto),
  inset: 2pt,
  [Erdradius:], $r_E=6.378 dot 10^6 m$,
  [Erdmasse:], $M_E=5.98 dot 10^24 "kg"$,
  [Gravitation:], $G = 6.67 dot 10^(-11) m^3 "kg"^(-1) s^(-2)$
  ),
  image("../figures/aufgaben7.png")
)

*Lösungsweg:*
1. Ist die Geschwindigkeit des Satelliten konstant?
_Ja, da Erde nicht schneller oder langsamer wird mit der Zeit $=> v="const" => dot(v) = 0$ \
Hinterer Teil der Kreisbewegung kann ignoriert werden_

2. Abhängig von Unbekannten Zentripetalkraft Formel anwenden
$
F_"äussere"=m dot omega^2 dot r dot hat(r) + m dot 0 dot hat(v) = m  dot omega^2 dot r dot hat(r) 
$

3. Umlaufzeit Erde berechnen
$ T=24h dot 3600=86^'400s $

4. Formel der Kräfte bestimmen: Satellit muss auf der Bahn bleiben, heisst 
$
arrow(F_G)-arrow(F_"äussere")&=arrow(0) \
G dot (M_E dot m)/r^2  dot hat(r) &= m dot omega^2 dot r dot hat(r)
$

5. Formel kürzen, einsetzen und nach r auflösen
$
G dot M_E/r^3 =omega^2 => G dot M_E/r^3 =(2^2 dot pi^2)/T^2 \
r=root(3, (G dot M_E dot T^2)/(4 pi^2 ))
$

6. Erdradius von Radius abziehen, um Höhe zu bekommen
$
h=r-r_E => root(3,((G dot M_E dot T^2)/(4pi^2 )))-r_E ≈ 35800 "km"
$

==== Kinetische Energie des Satelliten
Welche kinetische Energie hat der Satellit?

*Lösungsweg:*
1. $E_"kin"$ aufstellen
$
E_"kin"=m/2 dot v^2
$	

2. v bestimmen
$
v=(2 dot pi dot r)/T
$

3. Zahlen in E_kin Formel einsetzen

==== Flughöhe eines Satelliten bei 2 Umläufen pro Tag
Welche Flughöhe muss der Satellit haben, wenn er die Erde zweimal pro Tag umrundet?

*Lösungsweg:*
1. Formel nach r auflösen
$G dot M/r^3 =ω^2 <=> r=∛((G dot M)/ω^2 )$

2. Winkelgeschwindigkeit berechnen (Ein Tag = 86’400s)
$omega=(2 dot π)/T=(2 dot phi)/43'200s$

3. r berechnen und Radius der Erde abziehen
$h=r-r_E$

== Fadenpendel
=== Winkel eines Fadenpendels
Unter welchem Winkel muss ein Fadenpendel losgelassen werden, wenn die maximale
Beanspruchung des Fadens gerade doppelt so gross werden soll wie die beim ruhenden
Pendel?

(Bild siehe Abschnitt Fadenpendel)

*Lösungsweg:*
1. Resultierende Kraft ermitteln (Zentripetalkraft) \ $=>$ Bewegungsgleichung
$
F_"res" = F - F_G = (m v^2) / l
$

2. Energieerhaltungssatz anwenden (potentielle Energie = kinetische Energie)
$
(m v^2) / 2 &= m g h = m g l (1 - cos(phi)) \
"(Mal 2, durch l)" ==> (m v^2) / l &= 2 m g (1 - cos(phi))
$

3. Dies in Bewegungsgleichung einsetzen
$
F - F_G = 2 m g (1 - cos(phi))
$

4. Auflösen nach cos(phi)
$
cos(phi) &= 1 - (F - F_G) / (2 F_G) = frac(2 F_G - F + F_G, 2 F_G) = frac(3 F_G - F, 2 F_G) \
&= frac(3 - F / F_G, 2) 
$

5. Nach Voraussetzung ist Verhältnis von F und F_G = 2, also $ F : F_G = F / F_G = 2$
$
cos(phi) = frac(3 - 2, 2) = 0.5 => phi = 60^circle.small
$