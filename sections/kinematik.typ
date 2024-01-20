#import "../utils.typ": *

#section("Kinematik")

#subsection("Bewegung")
Mittlere Geschwindigkeit: \
$ arrow(v) = frac(x_2 - x_1, t_2 - t_1) = frac(x(t_2) - x(t_1), t_2 - t_1) $

Momentane Geschwindigkeit: \
$ v(t) = lim_(triangle.stroked.t t -> 0) frac(triangle.stroked.t x, triangle.stroked.t t) = frac(d, d t)x(t) $

Mittlere Beschleunigung: \
$ arrow(a) = frac(v_2 - v_1, t_2 - t_1) = frac(v(t_2) - v(t_1), t_2 - t_1) $

Momentane Beschleunigung: \
$ a(t) = lim_(triangle.stroked.t t -> 0) frac(v(t) - v(t - triangle.stroked.t t), triangle.stroked.t t) = frac(d, d t)v(t) $

Aufprallgeschwindigkeit (Höhe h): \
$ v = sqrt(2 g h) $

#subsection("Lineare Bewegung")
#subsubsection("Gleichförmige Bewegung")
s = Strecke (m) \
v = Geschwindigkeit (frac(m,s)) \
t = Zeit (s) \

Eine gleichförmige Bewegung ist eine Bewegung, bei der die Beschleunigung 0 ist.
$ a(t) = 0 $

Geschwindigkeit durch Integration: \
$ v(t) = v_0 = "konstant" $

Ort durch Integration: \
$ x(t) = v_0 dot t + x_0 $

Anderes:
$ s = v dot t $
$ v = frac(s, t) $
$ t = frac(s, v) $

#subsubsection("Gleichmässig beschleunigte Bewegung")
Bei einer gleichmässig beschleunigten Bewegung ist die Beschleunigung konstant.
a = Beschleunigung ($frac(m,s^2)$) \
v = Geschwindigkeit ($frac(m,s)$) \
t = Zeit (s) \

$ a(t)= a_0 = "konstant" $
$ v(t) = a_0 t + v_0 $
$ s(t) = 1 / 2 a_0 t^2 + v_0 t + x_0 $

$ a = 1/2 frac(v, t) $
$ t = frac(v, a) $

$ v = a dot t $
$ a = frac(v, t) $
$ t = frac(v, a) $

#subsection("Beliebige Bewegungen")
$ arrow(r) = arrow(r)(t) = mat(x(t); y(t); z(t)) $

Mittlere Geschwindigkeit: \
$ arrow(v) = frac(triangle.stroked.t arrow(r), triangle.stroked.t t) $
$ triangle.stroked.t arrow(r) = arrow(r)(t + triangle.stroked.t t) arrow(r)(t) $

Momentane Geschwindigkeit: \
$ arrow(v)(t) := lim_(triangle.stroked.t t -> 0) frac(arrow(r), triangle.stroked.t t) = frac(d, d t)arrow(r)(t) $

#subsubsection("Beschleunigung")
Mittlere Beschleunigung: \
$ arrow(a) = frac(triangle.stroked.t arrow(v), triangle.stroked.t t) $

Momentane Beschleunigung: \
$ arrow(a) := frac(d, d t) arrow(v) = dot(arrow(v)) = frac(d^2, d t^2) arrow(r) = dot.double(arrow(r)) $

$ arrow(a) = frac(d^2, d t^2) arrow(r) = frac(d, d t) arrow(v) = lim_(triangle.stroked.t t -> 0) frac(arrow(v)(t) - arrow(v)(t - triangle.stroked.t t), triangle.stroked.t t) $
$ a_"tangential" = lim frac(triangle.stroked.t v_"tangential", triangle.stroked.t t) = frac(d, d t) v = dot(v) $
$ a_"radial" = lim frac(triangle.stroked.t v_"radial", triangle.stroked.t t) = frac(v^2, r) $

#subsubsection("Gleichförmige Bewegung")
s = Strecke entlang der Bahnkurve 

$ a_"tangential" = 0 $
$ v_"tangential"(t) = v_0 = "konstant" $
$ s(t) = v_0 t + s_0 $

#subsubsection("Gleichmässig beschleunigte Bewegung")
$ a_"tangential" = a_0 eq.not 0 $
$ v(t) = a_0 t + v_0  $
$ s(t) = 1/2 a_0 t^2 + v_0 t + s_0 $

#subsection("Kreisbewegung")
Spezialfall einer beliebigen Bewegung.

Kartesische Koordination: \
$ arrow(P) = mat(x; y) = underbrace(mat(r dot cos(phi); r dot sin(phi)), "Polar -> Kartesisch") $

Polarkoordinaten: \
$ arrow(P) = mat(r; phi) = underbrace(mat(|sqrt(x^2 + y^2)|; tan(y / x)), "Kartesisch -> Polar") $

#image("../figures/koordinatensystem.png", width: 80%)

#subsubsection("Winkelgeschwindigkeit")
T = Periode (Zeit pro Umdrehung) \
f = Drehfrequenz (Umdrehungen pro Sekunde) \
r = Radius \
s = Strecke \
$phi$ = Winkel \
$omega$ = Winkelgeschwindigkeit \

$ phi = s / r $

Bahngeschwindigkeit v: \
$ v = s / T = frac(phi dot r, T) = r dot omega $

Drehfrequenz f: \
$ f = 1 / T $

Winkelgeschwindigkeit $omega$: \
$ omega = frac(2 pi, T) $

Periode: \
$ omega = 2pi f $

#subsubsection("Winkelbeschleunigung")
$alpha$ = Winkelbeschleunigung \

$ alpha = frac(d, d t) omega = dot(w) = frac(d^2 phi, d t^2) = dot.double(phi) $
$ a_"tangential" = frac(d v, d t) = frac(d, d t) r dot omega = r dot alpha $

#subsubsection("Gleichförmige Kreisbewegung")
$ a = 0 $
$ omega = omega_0 = "konstant" $
$ phi(t) = omega_0 t + phi_0 $

Tacho (Bahnangaben): \
$ a = alpha dot r = 0 $
$ v = w_0 dot r = "konstant" = v_0 $
$ s = w_0 r t + phi_0 r $

#subsubsection("Gleichförmig beschleunigte Kreisbewegung")
$ a = a_0 = "konstant" $
$ omega = a_0 t + omega_0 $
$ phi = 1 / 2 a_0 t^2 + omega_0 t + phi_0 $

#subsection("Zentripetalkraft")
$F_c$ = Zentripetalkraft \
$a_c$ = Zentripetalbeschleunigung \
m = Masse \
$v_t$ = Tangentialgeschwindigkeit \
r = Radius \
d = Durchmesser der Kurve \

$ F_c = frac(m dot v^2_t, r) $
$ a_c = frac(2v^2_t, d) $

#image("../figures/zentripetal.png", width: 80%)

#subsection("Wurfbahnen")

#subsubsection("Senkrechter Wurf")
$ a(t) = -g = "konstant" $
$ v(t) = -g t + v_0 (v_0 < 0 = "nach unten werfen") $
$ x(t) = -frac(1, 2)g t^2 + v_0 t + x_0 $


#subsubsection("Freier Fall")
$ a(t) = -g = "konstant" $
$ v(t) = -g t + 0 $
$ x(t) = -frac(1, 2)g t^2 + x_0 $

#subsubsection("Horizontaler Wurf")
$ a_x(t) = 0 $
$ v_x(t) = v_0 $
$ x(t) = v_0 t $

$ a_y(t) = -g = "konstant" $
$ v_y(t) = -g t + underbrace(v_0, 0) $
$ x(t) = frac(1, 2)g t + y_0 $

#subsubsection("Schiefer Wurf")
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