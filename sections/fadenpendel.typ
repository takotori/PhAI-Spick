= Fadenpendel
#grid(
  columns: (32%, auto),
  gutter: 5pt,
  image("../figures/fadenpendel.png"),[
    #set math.cases(reverse: true)
    $ cases(F = "Fadenkraft", F_G = "Gewichtskraft") F_"res" &= F - F_G \ &= ((m v^2)/l) $

Die Energie-Erhaltung sagt uns, dass potenzielle
Energie gleich kinetische Energie ist. Daraus folgt:
$(m v^2)/2 &=m g h \ &= m g(l-l dot cos(phi) ) \ &= m g l(1-cos(φ) )$


*Schwingungsdauer:*
#grid(
  columns: (auto, auto),
  gutter: 5pt,
  [Feder], [$T=2 phi sqrt(m/D) $],
  [Mathematisches Pendel], [$T approx 2 phi sqrt(l/g)$]
)
  ]
)
