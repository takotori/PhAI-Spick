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

#subsection("Leitung / Wirkungsgrad")
Leistung P: \
$ P = frac(triangle.stroked.t W, triangle.stroked.t t) = frac(F dot triangle.stroked.t s, triangle.stroked.t t) = arrow(F) dot arrow(v) $

Watt W: \
$ 1 W = 1 J / s $

Wirkungsgrad $eta$: \
$ eta = frac(P_"ab", P_"zu") $

#subsection("Impuls / Impulserhaltung")
Impuls $arrow(p)$: \und
$ arrow(p) = m dot arrow(c) $

2. Newtonsches Gesetz umschreiben: \
$ arrow(F) = m dot arrow(a) = m dot frac(d arrow(v), d t) = frac(d, d t) (m dot arrow(v)) = frac(d, d t) arrow(p) $

#subsection("Stösse")

$ arrow(O) = frac(1, m_1 + m_2) (m_1 dot(arrow(r_1)) + m_2 dot(arrow(r_2))) $
$ arrow(O) = m_1 arrow(v_1) + m_2 arrow(v_2) = arrow(P)_"tot" $

Impulssatz: \
$ arrow(P)_"tot" = arrow(P)_"tot" <=> m_1 v_1 + m_2 v_2 = m_1 v'_1 + m_2 v'_2 $

Energiesatz total elastisch: \
$ E_"kin" = 1 / 2 m_1 v_1^2 + 1 / 2 m_2 v_2^2 = 1 / 2 m_1 v'_1^2 + 1 / 2 m_2 v'_2^2 $

Relataivgeschwindigkeit $v_"rel"$:
$ v_"rel" = |v_1 - v_2| $

Reduzierte Masse $mu$: \
$ mu = frac(m_1 m_2, m_1 + m_2) $

Deformationsarbeit Q: \
$ Q = frac(mu  dot v^2_"rel", m_1 + m_2) $

#subsection("Rakete")
$mu$ = Treibstoffverbrauch \

Strahlgeschwindigkeit $u$: \
$ m dot d v = -u dot d m $

Raketengeschwindigkeit $v(t)$: \
$ v(t) = -u ln(m(t)) + v_0 + u ln(m_0) $
$ = u ln(frac(m_0,m(t))) + v_0 $

Beschleunigung der Rakete : \
$ frac(d v, d t) = frac(mu u, m_0 - mu t) -g $

#subsection("Gravitation")
Newton’sche Gravitationsgesetz:
$ F_G = G frac(m_1 m_2, r^2) $

Gravitationskonstante G: \
$ G = 6.67 dot 10^(-11) frac(m^3, k g dot s^2) $
//todo i guess

Gravitationspotential: \