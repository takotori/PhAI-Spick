#import "../utils.typ": *

= Messen und Messfehler
*Systematische Fehler:* z.B. Messen mit falsch kalibriertem Messgerät. \
Berechnet sich der Wert einer Grösse $z$ aus Messwerten der Grössen $x$ und $y$.

#align(center, $z=f(x,y)$)

und wurden die Messgrössen x und y mit einem Fehler von $Delta x$ bzw. $Delta y$ bestimmt, so ist der Wert von z nur ungenau bestimmt. Für den prognostizierten Wert und den prognostizierten Messfehler gilt

$
z = z_0 plus.minus Delta z \
z_0 = f(x_0,y_0) \
Delta z= abs(partial/(partial x) f(x_0,y_0)) dot Delta x+ abs( partial/(partial y) f(x_0,y_0)) dot Delta y
$

sofern die Grössen $x$ und $y$, z.B. auf Grund von fehlerhaften Messinstrumenten, systematisch falsch bestimmt wurden. Die Fehlerabschätzung durch systematische Fehler ist eine «worst-case»-Abschätzung \
*Statistische Fehler:* Bei mehrfach messen unterschiedliche Ergebnisse \
 $=>$ Mehrmals messen und Mittelwert nehmen verkleinert den Fehler
Fehlerfortpflanzung für normalverteilte Fehler. Berechnet sich der Wert einer
Grösse $z$ aus Messwerten der Grössen $x$ und $y$ gemäss
#align(center, $z=f(x,y)$)
und wurden die Messgrössen x und y durch Mehrfachmessung ($x$ n-fach gemessen, $y$ m-fach gemessen) und ohne systematischen Fehler bestimmt, so darf von statistisch normalverteilten Fehlern ausgegangen werden. In diesem Fall errechnet sich die Standardunsicherheit der Messwerte von x und y gemäss

$Delta x &=sqrt(1/(n(n-1)) sum_(i=1)^n (x_i-macron(x))^2 )=σ_x/sqrt(n) \
Delta y &=√(1/(m(m-1)) sum_(i=1)^m (y_i-macron(y) )^2 )=sigma_y/sqrt(m) \
sigma &= "Standardabweichung" \
macron(x) &= 1/n sum_(i=n)^n x_i ="Mittelwert"$

Es gilt also
$
x &= macron(x) plus.minus Delta x \
y &= macron(y) plus.minus Delta y
$

Ausserdem ist der prognostizierte Wert und der statistische Fehler von z durch folgende Formeln berechenbar
$
z =z plus.minus Delta z \
macron(z) =f(macron(x),macron(y)) \
Delta z=sqrt((partial/(partial x) f(x_0,y_0) dot Delta x)^2+(partial/(partial y) f(x_0,y_0) dot Delta y)^2 )
$

*Beispiel Systematischer Fehler:*
Ein Gewicht unbekannter Masse wird auf einer schiefen Ebene mit dem Neigungswinkel $alpha$ platziert, auf der es reibungsfrei gleiten kann. Die Hangabtriebskraft und der Neigungswinkel $alpha$ werden experimentell bestimmt. Die Werte sind $alpha=(30^circle.small plus.minus colorange(2^circle.small))  ,F_H=(10 plus.minus colgreen(0.3))N$. Aus Tabelle $g=(9.81 plus.minus colmagenta(0.03))$

$
F_H=m g dot sin(alpha)=>m &=F_H/(g dot sin(alpha) ) \
m &=(10N)/(9.81 m\/s^2 dot sin(30^circle.small) )=2.0387
$
Partielle Ableitungen:
$
frac(partial m, partial g) (F_H/(g dot sin(alpha)) )) &=-F_H/(g^2 dot sin(alpha) ) \
frac(partial m, partial alpha) (F_H/(g dot sin(alpha)) )) &=-(F_H dot cos(alpha))/(g dot sin^2 (alpha)) \
frac(partial m, partial F_H) (F_H/(g dot sin(alpha)) )) &=1/(g dot sin (alpha))
$
$
Delta m &= abs(-F_H/(g^2 dot sin(alpha)) dot colmagenta(Delta g)) +  abs(-(F_H dot cos(alpha))/(g dot sin^2 (F_H ) ) dot colorange(Delta alpha)) \ &+ abs(1/(g dot sin(alpha)) dot colgreen(Delta 
F_H)) =0.191"kg"
$
$
m=(2.04±0.19)"kg"
$
#colred[*Achtung*] $Delta alpha$ muss in Bogenmass sein!
#grid(
  columns: (auto, auto),
  inset: 5pt,
  [*Gradmass in Bogenmass*],	[$x=alpha/180 dot π$],	
  [*Bogenmass in Gradmass*],	[$alpha =x/π dot 180$]
)