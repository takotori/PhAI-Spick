= Mehrdimensionale Analysis
*Linearisierung:* \
$ f(x) underbrace(approx, x approx x_0) f'(x_0)(x - x_0) + f(x_0) $

Häufig mit Funktionen mehrerer Variablen zu tun, die weitere Funktionen beinhalten. \
$ f(x, y) &= x^2 dot sin(y) \
 x(t) &= sin(t) \
 y(t) &= t^3 $

*Partielle Ableitung:* \
Nach $x$ und $y$ getrennt ableiten.
$ frac(diff f, diff x) = frac(diff f, diff x) (x^2 dot sin(y)) = 2x dot sin(y) $
$ frac(diff f, diff y) = frac(diff f, diff y) (x^2 dot sin(y)) = x^2 dot cos(y) $

*Totale Ableitung:* \
$x(t)$ und $y(t)$ in $f(x, y)$ einsetzen und dann ableiten.
$ &frac(d f, d t)(x(t), y(t)) = frac(d, d t)(sin(t)^2 dot sin(t^3)) \ &= 2 sin(t) dot cos(t) dot sin(t^3) + sin(t)^2 dot cos(t^3) dot 3t^2 $

Altenativ mit mehrdimensionale Kettenregel möglich. Bei dieser werden die partiellen Ableitungen mit der Ableitung der Funktion multipliziert und addiert.
$ frac(d f, d t) = frac(diff f, diff x) dot frac(d x, d t) + frac(diff f, diff y) dot frac(d y, d t) $
