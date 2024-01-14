#import "../utils.typ": *

#section("Einführung")

#subsection("Formen")
#subsubsection("Kreis")
Umfang C: \
$ C = pi dot 2r $

Fläche A: \
$ A = pi dot r^2 $

#subsubsection("Dreieck")
Umfang C: \
$ C = a + b + c $

Fläche A: \
$ A = frac(1, 2) dot b dot h $

Pythagoras: \
$ c = sqrt(a^2 + b^2) $

#subsubsection("Kugel")
Volumen V: \
$ V = frac(4, 3) dot pi dot r^3 $

Oberfläche A: \
$ A = 4 dot pi dot r^2 $

#subsection("Trigonometrie")

$ a = "Ankathete" $
$ g = "Gegenkathete" $
$ h = "Hypothenuse" $  

$ sin(a) = g/h, #" " cos(a) = a/h, #" " tan(a) = g/a = sin(a)/cos(a) $
$ g = h dot sin(a), #" " h = frac(g, sin(a)), #" " a = arcsin(g / h)$

#image("../figures/circle.png", width: 60%)

#subsection("Vektor")
Kreuzprodukt:
$ mat(a_x; a_y; a_z;) × mat(b_x; b_y; b_z;) := mat(a_y b_z - a_z b_y; a_z b_x - a_x b_z; a_x b_y - a_y b_x;) $

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

#subsection("Integration")

#table(
  columns: (50%, 50%),
  inset: 5pt,
  fill: (_, row) => if row == 0 { gray },
  [*Funktion*], [*Ableitung*],
  $ x^a $,      $ frac(1, a + 1)x^(a + 1) $,
  $ 1/x $,      $ ln(|x|) $,
  $ sqrt(x) $,  $ 2 / 3 x^(3 / 2) $,
  $ sin(x) $,   $ -cos(x) + "const" $,
  $ cos(x) $,   $ sin(x) + "const" $,
)

// $ attach(=, t: !) $
