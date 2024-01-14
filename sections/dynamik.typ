#import "../utils.typ": *

#section("Dynamik")

Gewichtskraft: \
$ F_G = m dot g $

#subsection("Reibungskräfte")
Gleitreibung: \
$ F_"Gleit, R" = mu_"Gleit" dot F_N $

Rollreibung: \
$ F_"Roll, R" = mu_"Roll" dot F_N $

Rollreibungslänge e: \
$ e = frac(r dot F_"Reibung", F_N) = r dot mu_R $

#subsection("Arbeit und Energie")
s = Strecke \

Arbeit W: \
$ W = integral_A^B arrow(F) dot d arrow(s) $

Potentielle Energie: \
$ W = F_G dot h = underbrace(m dot g, F_G) dot h $

Potentielle Energie mit Feder: \
k = Federkonstante 
$ W = 1 / 2 k x_0^2 $

Kinetische Energie: \
$ F = m dot a ⇔ a = F / m $

Verschiebungsarbeit: \
$ W = F dot s = (m dot a) dot (1 / 2 a t^2) = 1 / 2 m v^2 $

Energieerhaltungssatz: \
$ W = F_G dot h = m g h = m g 1 / 2 g t^2 = 1 / 2 m v^2 = E_"kin" $

$ E_"kin" + E_"pot" = E_"tot" = "konst" $

#subsection("Leitung und Wirkungsgrad")
Leistung P: \
$ P = frac(triangle.stroked.t W, triangle.stroked.t t) = frac(F dot triangle.stroked.t s, triangle.stroked.t t) = arrow(F) dot arrow(v) $

Watt W: \
$ 1 W = 1 J / s $

Wirkungsgrad $eta$: \
$ eta = frac(P_"ab", P_"zu") $

#subsection("Impuls und Impulserhaltung")
Impuls $arrow(p)$: \
$ arrow(p) = m dot arrow(c) $

#subsection("more stuff")
