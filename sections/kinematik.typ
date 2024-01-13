#import "../utils.typ": *

#section("Kinematik")

#subsection("Bewegung")
Mittlere Beschleunigung: \
$ macron(a) = frac(v_2 - v_1, t_2 - t_1) = frac(v(t_2) - v(t_1), t_2 - t_1) $

Momentane Beschleunigung: \
$ a(t) = lim_(triangle.stroked.t t -> 0) frac(v(t) - v(t - triangle.stroked.t t), triangle.stroked.t t) = frac(d, d t)v(t) $

Aufprallgeschwindigkeit (Höhe h): \
$ v = sqrt(2 g h) $

#subsection("Schiefer Wurf")
$ a_x = 0 $
$ v_x(t) = v_0 dot cos(a) $
$ x(t) = v_0 dot cos(a) dot t + x_0 $

$ a_y = -g $
$ v_y(t) = v_0 dot sin(a) - g dot t $
$ y(t) = - frac(1, 2) g dot t^2 + v_0 dot sin(a) dot t + y_0 $


Bahnkurve y(x): \
$ y(x) = tan(a) dot x - frac(g, 2 dot v_0^2 dot cos(a)^2) dot x^2 $

Horizontale Distanz zur Zeit t: \
$ x(t) = v_0 dot cos(a) dot t $

Vertikale Distanz zur Zeit t: \
$ y(t) = v_0 dot t dot sin(a) - frac(g dot t^2, 2) $

Maximale Wurfdistanz: \
$ d = frac(v_0^2, g) dot sin(2 dot a) $

Maximale Wurfhöhe: \
$ h_max = frac(v_0^2, 2g) dot sin(a)^2 $

Distanz bis zur maximalen Wurfhöhe: \
$ X_max = frac(V_0^2, g) dot sin(a)^2 dot cos(a) = d / 2 $

Konstante horizontale Geschwindigkeit: \
$ v_x = v_0 dot cos(a) $

Vertikale Geschwindigkeit zur Zeit t: \
$ v_y = v_0 dot sin(a) - g dot t $