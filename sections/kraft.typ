#import "../utils.typ": *

= Kraft
#grid(
  columns: (50%, auto),
  gutter: 5pt,
  [*Kraft*], [$arrow(F_"res")=m arrow(a)$],
  [*Gewichtskraft*], [$F_G=m g $],
  [*Federkraft*], [$F_F=D y space.quad D &= "Federkonst." \ y &= abs(l - l_0)$],
    [*Hook\`sches Gesetz*], [$Delta F=D dot Delta y$],
  [*Zentripetalkraft*], [$F_Z=(m v^2)/r$],
  [*Schiefe Ebene* #image("../figures/kraftSchiefeEbene.png")], [$F_G=m g$ \
  #v(5pt)
  _*Normalkraft:*_ \ 
  $F_N=m g dot cos(alpha) $  \
  #v(5pt)
  _*Hangabtriebskraft*:_ \
  $F_H=m g dot sin(alpha)$  \
  #v(5pt)
  _*Haftreibungskraft*:_ \
  $F_"HR"=μ dot F_N$]

)

== Kraft Statik
In der Statik beewegen sich die Objekte nicht. Dort gilt also:
#align(center, [$sum F=0$, $v(t) = 0 m slash s$, $a(t) = 0 m slash s^2$])
#v(5pt)
#grid(
  columns: (40%, auto),
  gutter: 5pt,
  image("../figures/kraftStatik1.png"),
  [$ "X)"F_s dot cos(colblue(18^circle.small)) &-μ dot  F_N \ &-F_G dot sin(colgreen(35^circle.small))=0$ \
  $ "Y)" F_s dot  sin(colblue(18^circle.small)) &+F_N \ &-F_G dot cos(colgreen(35^circle.small))=0$]

)

