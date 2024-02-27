#import "../utils.typ": *

#section("Introduction")
#image("../figures/triangle.png")


#subsection("Ableitung")

#table(
  columns: (50%, 50%),
  inset: 5pt,
  fill: (_, row) => if row == 0 { gray },
  [*Funktion*], [*Ableitung*],
  $ x^a $,      $ a dot x^(a-1) $,
  $ 1/x $,      $ - 1 / x^2 $,
  $ sqrt(x) $,  $ frac(1, 2 sqrt(x)) $,
  $ sin(x) $,   $ cos(x) $,
  $ cos(x) $,   $ -sin(x) $,
  $ tan(x) $,   $ 1 / cos(2)^x $,
)

#subsection("Mehrdimensionale Analysis")
Häufig mit Funktionen mehrerer Variablen zu tun, die weitere Funktionen beinhalten. \
$ f(x, y) = x^2 dot sin(y) $
$ x(t) = sin(t) $
$ y(t) = t^3 $

*Partielle Ableitung:* \
Nach $x$ und $y$ getrennt ableiten.
$ frac(diff f, diff x) = frac(diff f, diff x) (x^2 dot sin(y)) = 2x dot sin(y) $
$ frac(diff f, diff y) = frac(diff f, diff y) (x^2 dot sin(y)) = x^2 dot cos(y) $

*Totale Ableitung:* \
$x(t)$ und $y(t)$ in $f(x, y)$ einsetzen und dann ableiten.
$ frac(d f, d t)(x(t), y(t)) = frac(d, d t)(sin(t)^2 dot sin(t^3)) $
$ = 2 sin(t) dot cos(t) dot sin(t^3) + sin(t)^2 dot cos(t^3) dot 3t^2 $

Altenativ mit mehrdimensionale Kettenregel möglich. Bei dieser werden die partiellen Ableitungen mit der Ableitung der Funktion multipliziert und addiert.
$ frac(d f, d t) = frac(diff f, diff x) dot frac(d x, d t) + frac(diff f, diff y) dot frac(d y, d t) $

#subsection("Energie (?)")
$v$ und $h$ sind abhängig von t. $E$ ist immer konstant.
$ underbrace(1/2 M v^2, "Energieerhaltungssatz") + underbrace(M g h, "Lageenergie") = E $

#subsection("Fehlerfortpflanzung")
*Systematische Fehler:* \
$ triangle.t v_1 = |frac(diff v_1, diff h)| dot triangle.t h + |frac(diff v_1, diff g)| triangle.t g $

*Statistische Fehler: (vlt nicht so wichtig)* \
$ triangle.t v_1 = sqrt((frac(diff v_1, diff h) dot triangle.t h)^2 + (frac(diff v_1, diff g) dot triangle.t g)^2) $