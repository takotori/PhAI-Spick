#import "../utils.typ": *

= Kraft
#grid(
  columns: (50%, auto),
  gutter: 5pt,
  [*Kraft:*], [$arrow(F)_"res"=m arrow(a)$],
  [*Gewichtskraft:*], [$F_G=m g $],
  [*Federkraft:*], [$F_F=D y space.quad D &= "Federkonst." \ y &= abs(l - l_0)$],
    [*Hook\`sches Gesetz:*], [$Delta F=D dot Delta y$],
  [*Schiefe Ebene:* #image("../figures/kraftSchiefeEbene.png")], [$F_G=m g$ \
  #v(5pt)
  *Normalkraft:* \ 
  $F_N=m g dot cos(alpha) $  \
  #v(5pt)
  *Hangabtriebskraft*: \
  $F_H=m g dot sin(alpha)$  \
  #v(5pt)
  *Haftreibungskraft:* \
  $F_"HR"=μ dot F_N$ #v(5pt)],
  [*Zentripetalkraft / \ Zentrifugalkraft:*], [$F_Z=(m v^2)/r$],

)
#v(4pt)
#grid(
  columns: (45%, auto),
  gutter: 2pt,
  image("../figures/Kreiskraefte.png"),
  text(size: 6pt, [Die *Zentripetalkraft* und *Zentrifugalkraft* wirken bei einer beschleunigten Kreisbewegung und haben die gleiche Formel. Es handelt sich um entgegengesetzte Kräfte, die abhängig von dem Bezugssystem sind. Wird eine Kreisbewegung von außen betrachtet, wirkt nur die Zentripetalkraft. Befindet sich der Beobachter im rotierenden System nimmt er beide Kräfte wahr.]),
)

== Kraft Statik
In der Statik bewegen sich die Objekte nicht. Dort gilt also: \
$ sum F=0, v(t) = 0 m slash s, a(t) = 0 m slash s^2 $

#align(
  center,
  image("../figures/kraftStatik1.png"),
)

$ "X) " F_s dot cos(colblue(18^circle.small)) &-μ dot  F_N  &-F_G dot sin(colgreen(35^circle.small))=0 $ \
$ "Y) " F_s dot  sin(colblue(18^circle.small)) &+F_N  &-F_G dot cos(colgreen(35^circle.small))=0 $

#image("../figures/kraftStatik2.png")

Ein Gewicht der Masse $m = 10"kg"$ wird entsprechend der obigen Skizze durch Seile an einer Wand befestigt. Welche Kräfte wirken im linken und rechten Seil?

*1. Methode:*

$ F_L/sqrt(3^2+4^2 ) vec(-3,4)+F_R/sqrt(8^2+6^2 ) vec(8,6)+m g vec(0,-1)=0 $

*2. Methode*

$ F_L vec(-cos(alpha),sin(alpha))+F_R vec(cos(beta),sin(beta))+m g vec(0,-1)=0 $

#grid(
  columns: (auto, auto),
  gutter: 5pt,
  align: (center +bottom, center+bottom),
  image("../figures/kraftStatik3.png"),
  image("../figures/kraftStatik4.png")
)
Eine $20 "kN"$ schwere Luftseilbahnkabine hängt reibungsfrei an einem Tragseil und wirddurch ein Zugseil festgehalten. Wie gross sind die Zugkräfte im Zug- und im Tragseil?

($alpha = 20^circle.small$ = 20◦ und $beta = 20^circle.small$)
$ 
F_"S1" = F_"S2" = F_T \ 
F_T vec(cos(180^circle.small - 20^circle.small),sin(180^circle.small - 20^circle.small))  +F_T vec(cos(20^circle.small),sin(20^circle.small)) \ + F_Z vec(cos(20^circle.small),sin(20^circle.small)) + vec(0,-20 "kN")=0 \
==> F_T = 9.97 dot 10^4 N, F_Z = 8.48 dot 10^3 N
$