#import "../utils.typ": *

#section("Dynamik")
Gewichtskraft: \
$F_G$ = Kraft \
$m$ = Masse \
$ F_G = m dot g $

#subsection("Reibungskräfte")
$mu_"Gleit"$ = Gleitreibungskoeffizient \
$mu_"Roll"$ = Rollreibungskoeffizient \
$F_N$ = Normalkraft \

Gleitreibung: \
$ F_"Gleit, R" = mu_"Gleit" dot F_N $

Rollreibung: \
$ F_"Roll, R" = mu_"Roll" dot F_N $

Rollreibungslänge e: \
$ e = frac(r dot F_"Reibung", F_N) = r dot mu_R $

#subsection("Arbeit und Energie")

Einheit von $W: 1J = 1 N m$ \
s = Strecke \

Arbeit W: \
$ W = F_s dot s $
$ W = integral_A^B arrow(F) dot d arrow(s) $

Potentielle Energie $E_"pot"$: \
$m$ = Masse \
$h$ = Höhe ab Referenz \

$ E_"pot" = F_G dot h = underbrace(m dot g, F_G) dot h $

Elastische Energie $E_"ela"$: \
k = Federkonstante \
x = Verschiebung
$ E_"ela" = 1 / 2 k x_0^2 $

Kinetische Energie $E_"kin"$: \
$m$ = Masse \
$v$ = Geschwindigkeit \
$ E_"kin" = m / 2 dot v^2 $

Totale Energie $E_"tot"$: \
$ E_"tot" = E_"pot" + E_"kin" $

Verschiebungsarbeit: \ // what this
$ W = F dot s = (m dot a) dot (1 / 2 a t^2) = 1 / 2 m v^2 $

Energieerhaltungssatz: \ // what this
$ W = F_G dot h = m g h = m g 1 / 2 g t^2 = 1 / 2 m v^2 = E_"kin" $

#subsection("Leitung / Wirkungsgrad")
Einheit von $P: 1W = 1 J/s$ \
Leistung P: \
$ P = frac(triangle.stroked.t W, triangle.stroked.t t) = frac(F dot triangle.stroked.t s, triangle.stroked.t t) = arrow(F) dot arrow(v) $

Watt W: \
$ 1 W = 1 J / s $

Wirkungsgrad $eta$: \
$P_"ab"$ = Abgeführte Leistung \
$P_"zu"$ Zugeführte Leistung \
$ eta = frac(P_"ab", P_"zu") $

#subsection("Impuls / Impulserhaltung")
Impuls $arrow(p)$: \
m = Masse \
v = Geschwindigkeit \
$ arrow(p) = m dot arrow(v) $

2. Newtonsches Gesetz umschreiben: \
$ arrow(F) = m dot arrow(a) = m dot frac(d arrow(v), d t) = frac(d, d t) (m dot arrow(v)) = frac(d, d t) arrow(p) $

#subsection("Stösse")
#subsubsection("Elastischer Stoss")
Wenn sich hier zwei Körper aufeinander zu bewegen, muss die Geschwindigkeit des Körpers, welcher von rechts nach links geht, negativ sein.

$v_1$ = Geschwindigkeit von Körper 1 vor Stoss \
$v_2$ = Geschwindigkeit von Körper 2 vor Stoss \
$v'_1$ = Geschwindigkeit von Körper 1 nach Stoss \
$v'_2$ = Geschwindigkeit von Körper 2 nach Stoss \
$m_1$ = Masse von Körper 1 \
$m_2$ = Masse von Körper 2 \

$ v'_1 = frac(m_1 - m_2, m_1 + m_2) dot v_1 + frac(2 dot m_2, m_1 + m_2) dot v_2 $
$ v'_2 = frac(2 dot m_1, m_1 + m_2) dot v_1 + frac(m_2 - m_1, m_1 + m_2) dot v_2 $

#subsubsection("Total inelastischer Stoss")
$v_1$ = Geschwindigkeit von Körper 1 vor Stoss \
$v_2$ = Geschwindigkeit von Körper 2 vor Stoss \
$m_1$ = Masse von Körper 1 \
$m_2$ = Masse von Körper 2 \
$v'$ = Gemeinsame Geschwindigkeit nach Stoss \

$ v' = frac(m_1 dot v_1 + m_2 dot v_2, m_1 + m_2) $

#subsubsection("Deformationsarbeit")
$v_1$ = Geschwindigkeit von Körper 1 vor Stoss \
$v_2$ = Geschwindigkeit von Körper 2 vor Stoss \
$m_1$ = Masse von Körper 1 \
$m_2$ = Masse von Körper 2 \
$mu$ = Reduzierte Masse \

Relativgeschwindigkeit $v_"rel"$:
$ v_"rel" = |v_1 - v_2| $

Reduzierte Masse $mu$: \
$ mu = frac(m_1 m_2, m_1 + m_2) $

Deformationsarbeit Q: \
$ Q = frac(m_1 m_2, 2(m_1 + m_2)) (v_1 - v_2)^2 $
oder vereinfacht:
$ Q = frac(mu dot v^2_"rel", m_1 + m_2) $


$ arrow(O) = frac(1, m_1 + m_2) (m_1 dot(arrow(r_1)) + m_2 dot(arrow(r_2))) $ // what this
$ arrow(O) = m_1 arrow(v_1) + m_2 arrow(v_2) = arrow(P)_"tot" $ // what this

Impulssatz: \ // what this
$ arrow(P)_"tot" = arrow(P)_"tot" <=> m_1 v_1 + m_2 v_2 = m_1 v'_1 + m_2 v'_2 $

Energiesatz total elastisch: \ // what this
$ E_"kin" = 1 / 2 m_1 v_1^2 + 1 / 2 m_2 v_2^2 = 1 / 2 m_1 v'_1^2 + 1 / 2 m_2 v'_2^2 $


#subsection("Rakete")

Endgeschwindigkeit in Erdferne ($g = 0$): \
u = Ausstoßgeschwindigkeit \
m = Verbleibende Masse \

$ v_m = u dot ln(m_0 / m) + v_0$

Geschwindigkeit nach Flugzeit t in Erdnähe ($g eq.not 0$):
$m_0$ = Startmasse
$m°$ = Ausgestossense Masse pro Zeit
$v_0$ = Startgeschwindigkeit
u = Ausstoßgeschwindigkeit \

$ v(t) = u dot ln(frac(m_0, m_0 - m° t)) - g dot t + v_0 $

Steighöhe nach Flugzeit t in Erdnähe ($g eq.not 0$): \
$m_0$ = Startmasse
$m°$ = Ausgestossense Masse pro Zeit
$v_0$ = Startgeschwindigkeit
u = Ausstoßgeschwindigkeit \

$ h(t) = u dot t - g/2 dot t^2 + v_0 dot t - u / m° dot ln(frac(m_0, m_0 - m° dot t)) dot (m_0 - m° dot t) $

Mit Brenndauer: \
$m_0$ = Startmasse
$m°$ = Ausgestossense Masse pro Zeit
$m$ = Verbleibende Masse

$ t = frac(m_0 - m, m°) $

Kepler Gesetze: \
1. Planeten bewegen sich auf Ellipsen, in deren einem Brennpunkt die Sonne steht
2. Der Fahrstrahl eines Planeten ¨uberstreicht in gleichen Zeiten gleiche Flächen
3. Die Quadrate der Umlaufzeiten zweier Planeten verhalten sich wie die Kuben der Halbachsen der Planten.

#subsubsection("Gravitation")
$G = 6.673 dot 10^(-11) frac(m^3, k g dot s^2) $ \
$m_E = 5.96 dot 10^24 k g $ = Erdmasse \
$m$ = Beliebige Masse \
$r_E$ = Abstand der Masse $m$ von der Erde \

$ E_"pot" = -G dot frac(m_e dot m, r_E) $

Fluchtgeschwindigkeit $V_F$: \
$ V_F = sqrt(2 frac(G dot m_E, r_E)) = 11.15 frac(k m, s)  $

Miniimale Kreisbahngeschwindigkeit $V_K$: \
$ V_K = sqrt(frac(G dot m_E, r_E)) = 7.89 frac(k m, s) $


#subsection("Zentripetalkraft")
#image("../figures/zentripetal.png", width: 100%)

Zentrifugalkraft vektoriell: \
$m$ = Masse \
$a_r$ = Radiale Zentripetalbeschleunigung

$ arrow(F)_Z = -m dot arrow(a)_r $

Zentrifugalkraft: \
r = Radius \
$omega$ = Winkelgeschwindigkeit \
$v = omega dot r$ = Umfangsgeschwindigkeit bei Radius r

$F_Z = m dot a_r $
$F_Z = m dot omega^2 dot r $
$F_Z = m dot v^2 / r $

Zentripetalbeschleunigung
$ a_r = frac(v^2, r) = omega^2 dot r $

Corioliskraft (Betrag): \
$v_r$ = Radiale Geschwindigkeit \
$omega$ = Winkelgeschwindigkeit \

$ F_C = 2 dot m dot v_r dot omega $

Tangentielle Coriolisbeschleunigung: \
$v_r$ = Radiale Geschwindigkeit \
$omega$ = Winkelgeschwindigkeit \

$ F_C = 2 dot v_r dot omega $

Rotationsarbeit: \
$v_r$ = Radiale Geschwindigkeit \
$omega$ = Winkelgeschwindigkeit \

$ F_C = 2 dot v_r dot omega $

#subsection("Drehbewegung")
Drehmoment M um eine vorgegebene Achse A: \
$M$ = Betrag des Drehmoments um Achse A \
$a$ = Winkelbeschleunigung um Achse A \
$J$ = Trägheitsmoment bzgl. der Achse A \

$ M = J_A dot a $

Trägheitsmoment J einer Punkt-Masse $m_0$: \
$m_0$ = Punktmasse
$r$ = Abstand der Punktmasse von der Achse A
$ J = m_0 dot r^2_A $

#image("../figures/massenträgheitsmoment.png", width: 100%)

#subsubsection("Satz von Steiner")
Trägheitsmoment $J_A$ bzgl. einer Achse A berechnet aus Schwerpunkts-Trägheitsmoment $J_"SP"$ \

$J_A$ = Trägheitsmoment bzgl. Achse A \
$J_"SP"$ = Trägheitsmoment bzgl. Schwerpunkt \
$R_A$ = Abstand der Achse A vom Schwerpunk SP \
$m$ = Masse \


$ J_A = J_"SP" + m dot R^2_A $

Trägheitsmoment $J_B$ bzgl. einer Achse B berechnet aus Trägheitsmoment $J_A$ bzgl. Achse A \

$J_A$ = Trägheitsmoment bzgl. Achse A \
$J_B$ = Trägheitsmoment bzgl. Achse B \
$R_"AB"$ = Abstand der parallelen Achse A und B \
$m$ = Masse \

$ J_B = J_A + m dot R^2_"AB" $

#subsection("Drehstuff")
Rotationsleistung P: \
$M$ = Drehmoment \
$omega$ = Winkelgeschwindigkeit \

$ P = M dot omega $

Totale Energie $E_"tot"$: \
$E_"tra"$ = Translationsenergie
$E_"rot"$ = Rotationsenergie \

$ E_"tot" = E_"tra" + E_"rot" $

Rotationsenergie $E_"rot"$: \
$J_"SP"$ = Trägheitsmoment bzgl. Schwerpunkt
$omega$ = Winkelgeschwindigkeit \

$ E_"rot" = frac(J_"SP" dot omega^2, 2) $

Translationsenergie $E_"tra"$: \
$m$ = Masse
$v_"SP"$ = Schwerpunktgeschwindigkeit \

$ E_"tra" = frac(m dot v^2_"SP", 2) $

Drehimpuls L bei Rotation um eine Achse A: \
$J_A$ = Trägheitsmoment bzgl. Achse A
$omega$ = Winkelgeschwindigkeit \

$ L = J_A dot omega $

Kreisel: \
$Omega$ = Präzessions-Winkelgeschwindigkeit \
$r_"os"$ = Abstand Drehpunkt zu Schwerpunkt \
$m$ = Masse \
$J$ = Trägheitsmoment \
$omega$ = Winkelgeschwindigkeit \

$ Omega = M / L_r $
$ Omega = frac(r_"OS" dot m dot g, J dot omega) $

Betrag des Drehmoments durch Gewichtskraft: \
$M = |arrow(M)| $ = Betrag des Drehmoment 
$r_"os"$ = Abstand Drehpunkt zu Schwerpunkt \
$m$ = Masse \
$beta$ = Kegelwinkel der Präzession \

$ M = r_"OS" dot m dot g dot sin(beta) $

Radialer Drehimpuls: \
$L_r$ = Radialkomponente des Drehimpuls \
$L = J dot omega $ = Totaler Drehimpuls \
$beta$ = Kegelwinkel der Präzession \

$ L_r = L dot sin(beta) = J dot omega dot sin(beta) $