#import "../utils.typ": *

#section("Einführung")

#subsection("Trigonometrie")

$ a = "Ankathete" $
$ g = "Gegenkathete" $
$ h = "Hypothenuse" $  

$ sin(a) = g/h, #" " cos(a) = a/h, #" " tan(a) = g/a = sin(a)/cos(a) $
$ g = h dot sin(a), #" " h = frac(g, sin(a)), #" " a = arcsin(g / h)$

#image("../figures/circle.png", width: 50%)

#subsection("Vektor")
Kreuzprodukt:
$ mat(a_x; a_y; a_z;) × mat(b_x; b_y; b_z;) := mat(a_y b_z - a_z b_y; a_z b_x - a_x b_z; a_x b_y - a_y b_x;) $

// $ attach(=, t: !) $
