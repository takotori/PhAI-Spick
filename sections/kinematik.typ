#import "../utils.typ": *

#section("Kinematik")

#subsection("Bewegung")
#bold("Mittlere Geschwindigkeit"): \
$ arrow(v) = frac(x_2 - x_1, t_2 - t_1) = frac(x(t_2) - x(t_1), t_2 - t_1) $

#bold("Momentane Geschwindigkeit:") \
$ v(t) = lim_(triangle.stroked.t t -> 0) frac(triangle.stroked.t x, triangle.stroked.t t) = frac(d, d t)x(t) $

#bold("Mittlere Beschleunigung:") \
$ arrow(a) = frac(v_2 - v_1, t_2 - t_1) = frac(v(t_2) - v(t_1), t_2 - t_1) $

#bold("Momentane Beschleunigung:") \
$ a(t) = lim_(triangle.stroked.t t -> 0) frac(v(t) - v(t - triangle.stroked.t t), triangle.stroked.t t) = frac(d, d t)v(t) $

#bold("Aufprallgeschwindigkeit (Höhe h):") \
$ v = sqrt(2 g h) $

#subsection("Lineare Bewegung")
#subsubsection("Gleichförmige Bewegung")
s = Strecke (m) \
v = Geschwindigkeit (frac(m,s)) \
t = Zeit (s) \

#bold("Ort:") \
$ x(t) = v_0 dot t + x_0 $

#bold("Geschwindigkeit:") \
$ v(t) = v_0 = "konstant" $

#bold("Beschleunigung:") \
$ a(t) = 0 $

#bold("")Anderes:
$ s = v dot t $
$ v = frac(s, t) $
$ t = frac(s, v) $

#subsubsection("Gleichmässig beschleunigte Bewegung")
a = Beschleunigung ($frac(m,s^2)$) \
v = Geschwindigkeit ($frac(m,s)$) \
t = Zeit (s) \

$ x(t) = 1 / 2 a_0 t^2 + v_0 t + x_0 $
$ v(t) = a_0 t + v_0 $
$ a(t)= a_0 = "konstant" $

Was häufiger antreffen sind, sind Aufgaben im Stil von Gesamtzeit 10s, ein Teil beschleunigt, ein Teil konstante Geschwindigkeit, Gesamtstrecke 100m.

$ x = 1 / 2 a_0 t^2_0 + v_0 dot (t - t_0) $
$ v_0 = a dot t_0 $

#text(weight: "bold", "Ohne Anfangswerte:") \
x = Ort \
v = Geschwindigkeit \
a = Beschleunigung \

$ x = frac(v^2, 2a) $
$ v = sqrt(2 a x) $
$ a = frac(v^2, 2x) $

#text(weight: "bold", "Mit Anfangswerte:") \
x = Ort \
v = Geschwindigkeit \
a = Beschleunigung \
$x_0$ = Anfangsort \
$v_0$ = Anfangsgeschwindigkeit \
$ x = frac(v^2 - v^2_0, 2a) + x_0 $
$ v = sqrt(v^2_0 + 2a dot (x - x_0)) $
$ a = frac(v^2 - v^2_0, 2 dot (x - x_0)) $

#bold("Idk what this is for:") \
$ a = 1/2 frac(v, t) $
$ t = frac(v, a) $

$ v = a dot t $
$ a = frac(v, t) $
$ t = frac(v, a) $

#subsection("Beliebige Bewegungen")
$ arrow(r) = arrow(r)(t) = mat(x(t); y(t); z(t)) $

#bold("Mittlere Geschwindigkeit:") \
$ arrow(v) = frac(triangle.stroked.t arrow(r), triangle.stroked.t t) $
$ triangle.stroked.t arrow(r) = arrow(r)(t + triangle.stroked.t t) arrow(r)(t) $

#bold("Momentane Geschwindigkeit:") \
$ arrow(v)(t) := lim_(triangle.stroked.t t -> 0) frac(arrow(r), triangle.stroked.t t) = frac(d, d t)arrow(r)(t) $

#subsubsection("Beschleunigung")
#bold("Mittlere Beschleunigung:") \
$ arrow(a) = frac(triangle.stroked.t arrow(v), triangle.stroked.t t) $

#bold("Momentane Beschleunigung:") \
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

#bold("Kartesische Koordination:") \
$ arrow(P) = mat(x; y) = underbrace(mat(r dot cos(phi); r dot sin(phi)), "Polar -> Kartesisch") $

#bold("Polarkoordinaten:") \
$ arrow(P) = mat(r; phi) = underbrace(mat(|sqrt(x^2 + y^2)|; tan(y / x)), "Kartesisch -> Polar") $

#image("../figures/koordinatensystem.png", width: 80%)

#subsubsection("Winkelgeschwindigkeit")
$T$ = Periode (Zeit pro Umdrehung) \
$f$ = Drehfrequenz (Umdrehungen pro Sekunde) \
$r$ = Radius \
$s$ = Strecke \
$phi$ = Winkel \
$omega$ = Winkelgeschwindigkeit \

#bold("Winkel") $phi$: \
$ phi = s / r $

#bold("Winkelgeschwindigkeit") $omega$: \
$ omega = frac(2 pi, T) $
$ v = omega dot r $
$ "oder irgendwie das unten" $
$ omega = a dot t $

#bold("Bahngeschwindigkeit") $v$: \
$ v = s / T = frac(phi dot r, T) = r dot omega $

#bold("Drehfrequenz") $f$: \
$ f = 1 / T $

#bold("Umlaufzeit") $T$: \
$ T = frac(2 pi, omega) = 1 / f $

#bold("Periode:") \
$ omega = 2pi f $

#subsubsection("Winkelbeschleunigung")
$alpha$ = Winkelbeschleunigung \

$ alpha = frac(d, d t) omega = dot(w) = frac(d^2 phi, d t^2) = dot.double(phi) $
$ a_"tangential" = frac(d, d t) r dot omega = r dot alpha $

#subsubsection("Gleichförmige Kreisbewegung")
$phi$ = Zurückgelegte Strecke auf Einheitskreit \
$phi_0$ = Anfangswinkel
$omega$ = Pro Zeit Zurückgelegter Winkel

$ a = 0 $
$ omega = omega_0 = "konstant" $
$ phi(t) = omega_0 t + phi_0 $

#bold("Tacho (Bahnangaben):") \
$ a = alpha dot r = 0 $
$ v = w_0 dot r = "konstant" = v_0 $
$ s = w_0 r t + phi_0 r $

#subsubsection("Gleichförmig beschleunigte Kreisbewegung")
$phi$ = Zurückgelegte Strecke auf Einheitskreit \
$phi_0$ = Anfangswinkel
$omega$ = Pro Zeit Zurückgelegter Winkel
$omega_0$ = Anfangsgeschwindigkeit

$ a = a_0 = "konstant" $
$ omega = a_0 t + omega_0 $
$ phi = 1 / 2 a_0 t^2 + omega_0 t + phi_0 $

#bold("Ohne Anfangswerte:") \
$phi$ = Winkel \
$omega$ = Winkelgeschwindigkeit \
$a$ = Winkelbeschleunigung \

$ phi = frac(omega^2, 2a) $
$ omega = sqrt(2 a phi) $
$ a = frac(omega^2, 2 phi) $

#bold("Mit Anfangswerte:") \
$phi$ = Winkel \
$omega$ = Winkelgeschwindigkeit \
$a$ = Winkelbeschleunigung \
$phi_0$ = Anfangswinkel
$omega_0$ = Anfangsgeschwindigkeit

$ phi = frac(omega^2 - omega^2_0, 2a) + phi_0 $
$ omega = sqrt(w^2_0 + 2a dot (phi - phi_0)) $
$ a = frac(omega^2 - omega^2_0, 2 dot (phi - phi_0)) $

#subsection("Wurfbahnen")

#subsubsection("Senkrechter Wurf")
Maximalhöhe erreicht, wenn die Geschwindigkeit 0 ist.

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

#bold("Wurfhöhe:") \
$v_0$ = Anfangsgeschwindigkeit \
$ h = frac(v_0^2, 2g) $

#bold("Steigzeit") $t$: \
$v_0$ = Anfangsgeschwindigkeit \
$ t = v_0 / g $

#subsubsection("Schiefer Wurf")
Wurfweite maximiert bei Abwurfwinkel von 45°.

$ a_x = 0 $
$ v_x(t) = v_0 dot cos(a) $
$ x(t) = v_0 dot cos(a) dot t + x_0 $

$ a_y = -g $
$ v_y(t) = v_0 dot sin(a) - g dot t $
$ y(t) = - frac(1, 2) g dot t^2 + v_0 dot sin(a) dot t + y_0 $

#bold("Bahnkurve") $y(x)$: \
$ y(x) = tan(a) dot x - frac(g, 2 dot v_0^2 dot cos(a)^2) dot x^2 $

#bold("Horizontale Distanz zur Zeit") $t$: \
$ x(t) = v_0 dot cos(a) dot t $

#bold("Vertikale Distanz zur Zeit") $t$: \
$ y(t) = v_0 dot t dot sin(a) - frac(g dot t^2, 2) $

#bold("Maximale Wurfdistanz") $d$: \
$ d = frac(v_0^2, g) dot sin(2 dot a) $

#bold("Maximale Wurfhöhe") $h_max$: \
$ h_max = frac(v_0^2, 2g) dot sin(a)^2 $

#bold("Distanz bis zur maximalen Wurfhöhe") $X_max$: \
$ X_max = frac(V_0^2, g) dot sin(a)^2 dot cos(a) = d / 2 $

#bold("Konstante horizontale Geschwindigkeit") $v_x$: \
$ v_x = v_0 dot cos(a) $

#bold("Vertikale Geschwindigkeit zur Zeit") $t$: \
$ v_y = v_0 dot sin(a) - g dot t $
