#import "../utils.typ": *

#section("Examples")
#subsubsection("Seilkräfte finden")
#align(center, image("../figures/exercise/gewichtKräfte.png", width: 75%))
Ein (masseloses) Seil ist an den Punkten A und B an zwei gegenüberliegenden Wänden befestigt, wobei die Wände im Abstand $a = 2m$ stehen. Der Befestigungspunkt A befindet sich $1m$ unterhalb vom Befestigungspunkt B. Eine Masse $m_G = 20 k g$ werde an das Seil gehängt (wobei sich die Masse entlang des Seils bewegen kann). Die beiden Seilenden haben
einen Winkel von $alpha = 30°$ zum Lot hin. \

a) Wie gross sind die einzelnen Seilkräfte? \
$ x = underbrace(0, F_G) + underbrace(cos(60) dot F_"s1", F_"s1") - underbrace(cos(60) dot F_"s2", F_"s2") = 0 $
$ y = underbrace(-F_G, F_G) + underbrace(cos(30) dot F_"s1", F_"s1") + underbrace(cos(30) dot F_"s2", F_"s2") = 0 $
Nach $F_"s1"$ und $F_"s2"$ auflösen oder im TR lösen gibt:
$ F_"s1" = F_"s2" = 113.27N $

b) Wie lang sind die einzelnen Seilabschnitte? \
#align(center, image("../figures/exercise/seillängen.png", width: 60%))

Formel für x herausfinden:
$ d / l_a = sin(alpha) => d  = l_a dot sin(alpha) $
$ frac(a - d, l_b) = sin(alpha) => a - d = l_b dot sin(alpha) $
$ x: underbrace(l_a dot sin(alpha), d) + underbrace(l_b dot sin(alpha), a - d) = "a"  $

Formel für y herausfinden:
$ A_1 / l_a = cos(alpha) => A_1 = cos(alpha) dot l_A $
$ frac(A_1 + b, l_b) = cos(alpha) => A_1 + b = cos(alpha) dot l_b $
$ y: b + underbrace(cos(alpha) dot l_A, A_1) = underbrace(cos(alpha) dot l_b, A_1 + b) $

x und y nach $l_a$ und $l_b$ im TR auflösen:
$ l_A = 1.422m $
$ l_B = 2.577m $

#subsubsection("Kraft auf Kranarm")
#align(center, image("../figures/exercise/kran.png", width: 75%))
Ein Kran hebt einen Stein der Masse $G = 150k g$ wie in der Skizze dargestellt. Der Kranarm ist an Punkt A drehbar gelagert und das Seil ist in Punkt B um eine Umlenkrolle geschleift und am Kranarm fest verbunden. \
Berechnen sie die Kraft, mit welcher das Kranlager an Punkt A auf den Kranarm wirkt, wenn das System im Gleichgewicht ist.
#align(center, image("../figures/exercise/kranKräfte.png", width: 100%))

$ M = "Hebel 1" + "Hebel 2" = 0 $
$ F_X = F_"S1" + F_"S2" F_"A" = 0 $
$ F_Y = F_"S1" + F_"S2" F_"A" - F_G = 0 $

Einsetzen in Solver:
$ 3 dot 150 k g dot 9.81 dot cos(30) - 1 dot F_S - 2 dot F_S dot cos (30) = 0 $
$ -F_S dot sin(30) - F_S dot sin(60) + F_"Ax" = 0 $
$ F_S dot cos(30) + F_S dot cos(60) + A_"Ay" - 150 k g dot 9.81 = 0 $

#subsubsection("Kraft auf Stab")
Ein dünner Stab der Länge $L = 23.95c m$ mit der Masse $m = 493 g$ liegt lose in einem Schlitz. Die Höhe des Schlitzes wird langsam vergrössert. Im Moment, wo der Stab zu rutschen beginnt ist die Höhe $H = 4.97c m$ und der Stab in einem Winkel $a = 31.4°$ zur Horizontalen. Der
Haftreibungskoeffizient $mu_"HK"$ zwischen Stab und Kante beträgt $0.41$.

a) Skizzieren und berechnen Sie alle auftretenden Kräfte
#image("../figures/exercise/schlitz.png")
$ x: -F_"RW" - cos(58.6) dot F_"RK" + cos(a) dot F_"NK" = 0 $
$ y: underbrace(-g dot m, F_G) - F_"NW" + sin(a) dot F_"RK" + sin(58.6) dot F_"NK" = 0  $

#image("../figures/exercise/schlitzDreh.png")
$ M: L / 2 cos(a) dot F_G - F_"NK" dot H / sin(a) = 0  $

Gewichtskraft des Stabs: \
$ F_G = m dot g = 4.83 N $

Aus der Drehmomentengleichugn können die Kantenkräfte berechnet werden: \
$ F_"NK" = frac(l/2 cos(a) dot F_G, H / sin(a)) = frac(l/2 cos(a) dot sin(a) dot F_G, H) = 5.182 N $
$ F_"RK" = mu_"HK" dot F_"NK" = 2.125N $

Aus der Gl. für die x-Richtung: \
$ F_"RW" = - cos(58.6) dot F_"RK" + cos(a) dot F_"NK" = 0.886N $

Aus der Gl. für die y-Richtung: \
$ F_"NW" = underbrace(-g dot m, F_G) + sin(a) dot F_"RK" + sin(58.6) dot F_"NK" = 0.694N $

b) Warum ist es am optimalsten, den Berührungspunkt des Stabs mit der oberen Fläche als Bezugspunkt für die Drehmomente zu wählen? \
Die meisten Kräfte verschwinden mit diesem Bezugspunkt. Die Berechnung wird somit einfacher.

c) Wie gross ist der Haftreibungskoeffizient $mu_H$ zwischen Stab und Fläche? 
$ F_R = mu dot F_N $
$ mu_"HW" = F_"RW" / F_"NW" = 1.277 $

#subsubsection("Tram")
Eine 2-achsige, alte Lokomotive von $4.73T$ kann bei 79-Promille Steigung (79m vertikal auf 1000m horizontal) auf den Uetliberg mit $0.32 m/s^2$ beschleunigen, ohne dass die Räder durchdrehen. Der Schwerpunkt der Lokomotive befindet sich $1.18m$ hinter der vorderen Triebachse und $2.6m$ vor der hinteren Laufachse in einer Höhe von $2.15m$ über dem Geleise. Der Rollreibungskoeffizient beträgt $0.0015$. Wie gross muss der Haftreibungskoeffizient mindestens sein?
#image("../figures/exercise/tram.png")
$ x: F_H - F_"RL" - F_"RT" - F_G dot sin(a) = m dot a $
$ y: F_"NL" + F_"NT" - F_G dot cos(a) = 0 $
$ M: F_G dot (s_2 dot cos(a) + h dot sin(a)) + m dot a dot h = F_"NL" dot (s_1 + s_2) $

a) Berechnen Sie die Gewichtskraft $F_G$ der Lokomotive \
$ F_G = m dot g = 46401.3N $

b) Berechnen Sie die Kraft $F_"NL"$ mit der die Laufachse auf die Schiene drückt \
Aus Drehmomentgleichung: \
$ F_"NL" = frac(F_G dot (1.18m dot cos(a) + 2.15m dot sin(a)) + m dot a dot 2.15m, 2.6m + 1.18m) $
$ F_"NL" = 17379.5N $

c) Berechnen Sie die Kraft $F_"NT"$ mit der die Triebachse auf die Schiene drückt \
Aus y-Richtung der Kraft nach $F_"NT"$ auflösen: \
$ F_"NT" = F_G dot cos(a) - F_"NL" = 28877.7N $

d) Berechnen Sie den minimalen Haftreibungskoeffizienten ”Rad-Schiene” \
Aus x-Richtung der Kraft nach $mu_H$ (steckt in $F_H$) auflösen:
$ m dot a = mu_H dot F_"NT" - mu_R dot F_"NL" - mu_R dot F_"NT" - F_G dot sin(a) $
$ mu_H = frac(m dot a + mu_R dot F_"NL" + mu_R dot F_"NT" + F_G dot sin(a), F_"NT") $
$ mu_H = 0.1814 $

#subsubsection("Ruckartige Bewegung")
Auf einem Tisch steht eine Blumenvase. Wir wollen das Tischtuch wegziehen, ohne dass die Vase herunterfällt. \
Das Tuch wird ruckartig auf eine konstante Geschwindigkeit $v_0$ beschleunigt (die für die Beschleunigung benötigte Zeit wird vernachlässigt) und wird dann mit dieser konstanten Geschwindigkeit auf einer Strecke von $60c m$ bewegt. Die Gleitreibung zwischen Vase und Tischtuch hat den Wert $µ_G = 0.3$. Wie schnell muss daS Tuch bewegt werden, damit sich die Vase in der gleichen Zeit höchstens $5c m$ bewegt? \

Zuerst können wir die Zeit durch einige der Grössen ausdrücken:
$ t = S_T / v_0 $

Beschleunigt wird unsere Vase durch die Reibung des durchrutschenden Tischtuches. Dabei können wir sagen, dass die Gesamtkraft für die Beschleunigung der Reibungskraft entsprechen muss.
$ m dot a = mu_G dot m dot g $
$ a = mu_G dot g $

Nun können wir die Strecke der Vase berechnen:
$ t = S_T / v_0 S_V = a_v / 2 dot t^2 $
$ t = 0.6 / v_0 0.05 = frac(0.3 dot 9.81, 2) dot t^2 $
$ v = 3.25 m/s $

#subsubsection("Mindestabstand Fahrzeug")
Auf einer Autobahn fährt ein Fahrzeug A mit konstanter Geschwindigkeit $v_"A0" = 110 frac(k m, h)$. In die Autobahn fährt ein Fahrzeug B ein. Zum Zeitpunkt des Einfahren ($t = 0$) hat Fahrzeug B eine Geschwindigkeit $v_"B0" = 110 frac(k m, h)$ und einen Abstand von Fahrzeug A von $d = 200m$. Welche (konstant angenommene) Beschleunigung aB muss Fahrzeug B haben, wenn ein Mindestabstand der beiden von $d_"min" = 40m$ eingehalten werden soll? \

Überlegung: Der Mindestabstand muss eingehalten werden, wenn beide Fahrzeuge gleich schnell sind. Dieser Mindestabstand muss zum Zeitpunkt $t x$ erreicht sein. Falls A langsamer ist als B, dann vergrössert sich der Abstand, umgekehrt verringert sich der Abstand. \
Somit gilt:
$ v_"A0" = v_"B0" + a_B dot t_x $

Ausserdem können wir den Mindestabstand algebraisch ausdrücken. Fahrzeug A bewältigt diese Strecke mit seiner regelmässigen Geschwindigkeit $v_"A0" dot t x$. Bei Fahrzeug B ist dies etwas mehr:
$ "Beschleunigung:" a_B / 2 dot t^2_x $
$ "Startgeschwindigkeit:" v_"B0" dot t_x $
$ "Vorsprung:" 200m $

Zusammengesetzt:
$ d_min = S_B - S_A $
$ d_min = a_B / 2 dot t^2_x + v_"B0" dot t_x +d - v_"A0" dot t_x $
$ t_x = 28.8 $
$ a_B = 0.39 $

#subsubsection("Reh überfahren")
Ein Bus fährt mit $60 k m/h$ auf einer geraden Strecke durch den Wald. Plötzlich tritt ein Reh auf die Strasse und der Fahrer beginnt $27 m$ vor dem Hindernis mit einer Vollbremsung. Es reicht gerade bis zum Stillstand $4 m$ vor dem erstarrten Reh.

Mit welcher Geschwindigkeit würde er auf das Reh prallen, wenn er erst $22 m$ vor dem Hindernis die Vollbremsung eingeleitet hätte.

Verzögerung berechnen:
$ x_1 = 27m - 4m = 23m $
$ x_1 = frac(v^2_0, 2 a) $
$ a = frac(v^2_0, 2 x_1) = 6.04 m/s^2 $

$ x_2 = frac(v^2_0 - v^2_1, 2 a)  $
$ v_1 => sqrt(v^2_0 - 2 a x_2) $
$ v_1 = 3.47 m/s = 12.5 frac(k m, h) $

#subsubsection("Vollbremse")
Ein Auto fährt im Nebel mit $36 k m/h$. Plötzlich taucht ein Hindernis auf und er beginnt $15 m$
vor dem Hindernis mit einer Vollbremsung. Es reicht gerade bis zum Stillstand $0m$ vor der
Wand.

Mit welcher Geschwindigkeit würde er auf das Hindernis prallen, wenn er eine höhere Ge-
schwindigkeit von $45 k m/h$ gehabt hätte, dafür aber bereits $18 m$ vor der Wand die Vollbremsung
eingeleitet hätte.

Beschleunigung $a$ berechnen: \
$ x_1 = frac(v^2_1, 2 a) => a = frac(v^2_1, 2 x_1) $
$ a = frac(10^2, 2 dot 15) = 3.33 m/s  $

Zeit für Bremsung: \
$ x_2 = - 1/2 a t^2 + v_20 dot t $
$ x_2 = - 3.33/2 dot t^2 + 12.5 dot t = 18m $
$ t = 1.944s $

Aufprallgeschwindigkeit: \
$ v_2 = v_20 - a dot t $
$ v_2 = 12.5 - 3.33 dot 1.944 $
$ v_2 = 6.02 m/s $

#subsubsection("U-Bahn Beschleunigung")
Eine U-Bahn legt zwischen 2 Stationen einen Weg von $3k m$ zurück. Aus der Anfahrbeschleunigung $a_A = - 0.6 m/s^2$ und der Höchstgeschwindigkeit $v_"max" = 90 frac(k m, h)$ soll der Anfahrweg, Bremsweg, Wegstrecker der gleichförmigen Bewegung und die Fahrzeit ermittelt werden. \

Aus der konstanten Beschleunigung $a_A$ folgt beim Anfahren ein Geschwindigkeitsverlauf
$ v_A = a_A dot t $

Mit der vorgegebenen Höchstgeschwindigkeit findet man die Anfahrtzeit
$ t_A = v_"max" / a_A = frac(90 dot 1000, 3500 dot 0.2) = 125s $

und den Anfahrweg
$ s_A = 1/2 a_A t^2_A = 1/2 dot o.2 dot 125^2 = 1563m $

Beim Bremsen mit konstanter Verzögerung $a_B$ gilt für die Geschwindigkeit
$ v_B = v_"max" + a_B t $

Die Zeit $t_B$ bis zum Stillstand ($v_B = 0$) ist wird daher
$ t_B = - v_"max" / a_B = frac(90 dot 1000, 3600 dot (-0.6)) = 41.67s $

und der zugehörige Bremsweg ergibt sich zu
$ s_B = v_"max" t_B + 1/2 a_B t^2_B = frac(90 dot 1000, 3600) dot 41.67 - 1/2 dot 0.6 dot 41.67^2  $
$ s_B = 521m $

Für die Fahrt mit konstanter Geschwindigkeit $v_"max"$ bleibt dann ein Weg von
$ s^* = 3000 - s_A - s_B = 916m $

Hierzu gehört eine Zeit
$ t^* = s^* / v_"max" = frac(916 dot 3600, 90 dot 1000) = 36.64s $

Die Gesamtfahrzeit wird damit
$ T = t_A + t^* + t_B = 203.31s $

#subsubsection("Bremsen vor Ampel")
Ein PKW-Fahrer nähert sich mit einer Geschwindigkeit von $v_0 = 50 frac(k m, h)$ einer Ampel. Sie sprint aufu rot, wenn er noch $l = 100m$ entfernt ist. Die Rot- und Gelbphase dauert $t^* = 10s$. Der Fahere möchte diei Ampel gerade noch passieren, wenn sie weider auf grün wechselt. \

Bei konstanter Beschleunigung $a_0$ gilt 
$ v = v_0 + a_0 t $
$ x = v_0 t + a_0 t^2 / 2 $

a) Mit welcher konstanten Beschleunigung $a_0$ muss der Fahrer bremsen? \
Aus der Bedingung $x(t^*) = l$ folgt
$ a_0 = 2 / t^(*2) (l - v_0 t^*) = 2/10^2 (100 - frac(50 dot 1000, 3600) dot 10) = -0.78 m/s^2 $

b) Welche Geschwindigkeit $v_1$ hat er auf der Höhe der Ampel? \
Mit der nun bekannten Bremsverzöerung ergibt sich aus der ersten Gleichung
$ v_1 = v(t^*) = 50 dot 1000 / 3600 - 0.78 dot 10 = 6.09 m/s $

#subsubsection("Schiefer Wurf mit Basketball")
#align(center, image("../figures/exercise/basketballwurf.png", width: 75%))
Ein Basketball mit $30c m$ Durchmesser soll in einem Abwurfwinkel von $70°$ zur Horizontalen direkt in den Basketball-Korb geworfen werden aus einer Höhe von $2.1m$ (Ballmittelpunkt). Die Mitte des Korbrings von 35cm Durchmesser befindet sich in einer Distanz von $2.7m$ und in $3.2m$ Höhe.

$ a_x = 0 $
$ v_x(t) = v_0 dot cos(phi) $
$ x(t) = v_0 dot cos(phi) dot t + underbrace(0, "Anfangshöhe") $

$ a_y = -g $
$ v_x(t) = v_0 dot sin(phi) - g dot t $
$ y(t) = -1/2 g t^2 + v_0 dot sin(phi) dot t + underbrace(2.1m, "Anfangshöhe") $

a) Was ist die Abwurf-Geschwindigkeit unter der Annahme eines perfekten Wurfs (Ballmittelpunkt passiert genau in der Korbmitte)? Wie lange braucht der Ball bis zur Korbmitte? 
Formel für Abwurfgeschwindigkeit:
$ x(t): v_0 dot cos(phi) dot t = 2.7m => v_0 = frac(2.7m, cos(phi) dot t) $

Formel zum $t$ herausfinden:
$ y(t): -1/2 g t^2 + v_0 dot sin(phi) dot t + 2.1m = 3.2m $

x und y nach $t$ und $v_0$ im TR auflösen:
$ t = 1.13s $
$ v_0 = 6.95 m/s $

c) Welche maximale Höhe erreicht der Ball (Referenzpunkt: Ballmitte)? 
$ h_max = frac(v_0, 2 dot g) dot sin(phi)^2 + 2.1m $
$ h_max = frac(6.95 m/s, 2 dot g) dot sin(70)^2 + underbrace(2.1m, "Abwurfhöhe") $
$ h_max = 4.27m $

d) In welcher Distanz und Höhe relativ zur Abwurfstelle befindet sich der Ball nach 1.1s?
$ x(1.1) = 6.95 dot cos(70) dot 1.1 = 2.7m $
$ y(1.1) = -1/2 g dot 1.1^2 + 6.95 dot sin(70) dot 1.1 = 1.1m $

#subsubsection("Schiefer Gartenschlauch")
Ein Schlauch wird so gehalten, dass ein kollimierter Wasserstrahl mit $15m/s$ unter $55°$ gegenüber der Horizontalen nach oben spritzt. In $7.0m$ Entfernung befindet sich eine Wand.

$ a_x = 0 $
$ v_x(t) = v_0 dot cos(phi) $
$ x(t) = v_0 dot cos(phi) dot t + underbrace(x_0, "Anfangshöhe") $

$ a_y = -g $
$ v_x(t) = v_0 dot sin(phi) - g dot t $
$ y(t) = -1/2 g t^2 + v_0 dot sin(phi) dot t + underbrace(x_0, "Anfangshöhe") $

a) Wo befindet sich das Wasser 0.5 s nach Verlassen der Schlauchdüse und welche Geschwindigkeit hat es?
Ort: \
$ x(0.5) = 15m/s dot cos(55) dot 0.5s = 4.3m $
$ y(0.5) = -1/2 g dot 0.5^2 + 15 m/s dot sin(55) dot 0.5 = 4.9m $

Geschwindigkeit: \
$ v_x(0.5) = 15 m/s cos(55) = 8.6 m/s $
$ v_y(0.5) = 15 m/s dot sin(55) - g dot t = 7.3 3/s $

b) Nach welcher Zeit und in welcher Höhe über der Schlauchdüse trifft das Wasser auf die Wand?
$ underbrace(7m, x(t)) = v_0 dot cos(phi) dot t $
$ t = frac(7m, 15 m/s dot cos(55)) = 0.8s $
$ y(0.8) = -1/2 g dot 0.8^2 + 15 m/s dot sin(55) dot 0.8 = 6.7m $

c) Wie weit (auf der Höhe der Düse) und wie hoch würde das Wasser ohne Wand spritzen?
$ d = v^2_0 / g dot sin(2 dot phi) = 21.55 m $
$ h_max = frac(v^2_0, 2 dot g) dot sin(phi)^2 = 7.6m $

#subsubsection("Konstante Beschleunigung einer Stahlkugel")
Wie lange braucht eine homogene Stahlkugel zum Herabrollen auf einer $1m$ langen, schiefen Ebene mit einem Steigungswinkel von $phi = 30°$? Die Bewegung beginne aus dem Stillstand und Kugel rollt ohne zu gleiten. Die Kugel erfährt eine konstante Beschleunigung. \
Energiebilanz:
$ m dot g dot h = frac(m dot v^2, 2) + frac(J dot omega^2, 2) $
$ omega = v / r $
$ J = frac(2 dot m dot R^2, 5) $
$ s = frac(a dot t^2, 2) $
$ v = a dot t $
$ h = s dot sin(phi) $
Setzen wir das zusammen, k¨urzt sich der Radius und die Masse der Kugel heraus.
$ m dot g dot h = 1/2 dot m dot v^2 + 1/2 dot 2/5 dot m dot R^2 dot (V/R)^2 $
$ m dot g dot h = m dot v^2(1/2 dot 2/5) $
$ m dot g dot h = frac(7 dot m dot v^2, 10) $
$ g dot h = frac(7 dot v^2, 10) $

#subsubsection("Bowlingkugel")
Eine Bowlingkugel der Masse $2.7 k g$ und mit dem Durchmesser $22c m$ wird so geworfen, dass sie sich nach dem Auftreffen auf der Bahn, ohne zu rotieren mit einer Geschwindigkeit von $8.5m/s$ bewegt. Die Gleitreibungszahl zwischen Kugel und Bahn beträgt $0.3$.
a) Wie gross ist die lineare Beschleunigung (infolge Reibung)? \
In Y-Richtung wirkt sowohl die Gewichtskraft als auch die Normalkraft. Beide kompensieren sich. In X-Richtung ist nur die Reibung entgegen der Bewegungsrichtung
wirksam, die durch die Normalkraft ausgedrükt wird:
$ F_G = F_N $
$ F_R = - mu F_N $

Mit dem zweiten Newtonschen Axiom ergibt sich:
$ F_"res" = m a $
$ F_"res" = F_R $
$ F_"res" = - mu m g $
$ a = - mu g $

c) Wie gross ist die Winkelbeschleunigung der Kugel während des Gleitens? \
Die Winkelbeschleunigung α erhalten wir aus der Grundgleichung der Rotation (bzgl. Schwerpunkt)
$ J_a = M_"res" $
$ a = M_"res"/J $
$ a = frac(mu m g R, J) $
$ a = frac(mu m g R, 2/5 m R^2) $
$ a = frac(5 mu g, 2 R) $
$ a = frac(5 mu dot 9.81 m/s^2, 20.11m) $
$ a = 66.89 "rad"/s^2 $

d) Wie lange gleitet die Kugel, bevor sie zu einer reinen Rollbewegung übergeht? (Hinweis: Die Schwerpunktsgeschwindigkeit muss hier der Tangentialgeschwindigkeit
entsprechen.) \
Wenn die Kugel aufhört zu gleiten, gilt die Rollbedingung: $v = R omega$:
$ v = R dot omega $
$ v_0 - a dot t = R dot a dot t $
$ = frac(5 mu g t, 2) $
$ v_0 = frac(5 mu g t, 2) + mu g dot t $
$ = (7/2 mu g) dot t $
$ t = frac(2 v_0, 7 mu g) $
$ = frac(2 dot 8.5 m/s, 7 dot 0.3 dot 9.81 m/s^2) $
$ = 0.83s $

#subsubsection("Drehmoment Seiltrommel")
An einer Seiltrommel mit einem Durchmesser von $29c m$ und einem Massenträgheitsmoment von $3.3k g m^2$ hängt eine Masse von $70k g$. Welches Drehmoment muss der Motor an der Seiltrommel aufbringen, damit die Last mit einer Beschleunigung von $2 m/s^2$ aufgehoben wird? \

Hier müssen wir uns fragen, wo die Kraft des Motors ansetzen wird. Basierend auf der Aufgabenstellung wird wohl die Achse der Seiltrommel rotiert, somit gilt das Drehmoment um eine gegebene Achse ($M = J_A dot alpha$). $J_A$ ist mit $3.3k g m^2$ bereits gegeben. Die Winkelbeschleunigung kann mit $alpha = a / r$ berechnet werden. $a$ entspricht $2 m/s^2$ und $r = 0.29/2$. \

Nun soll der Motor auch noch die Masse heben können. Dazu brauchen wir das Drehmoment $M = F dot r$. $F$ entspricht hierbei $m dot a$, wobei wir a nochmals aufschlüsseln müssen, da einerseits $g$ nach unten zieht, aber wir die Masse mit $2 m/s^2$ hochziehen wollen. Unser finales $a$ ist somit $g + 2 m / s^2$ .
Stecken wir das alles zusammen erh¨alt man:
$ M_M = J_A dot alpha + F dot r $
$ M_M = 3.3 dot 2 / 0.145 + 70 dot (9.81 + 2) dot 0.145 $
$ M_M = 165.389N $

Es kann auch sein, dass gefragt wird nach der Kraft, welche auf dem Seil wirkt. Die Gleichungen wären:
$ F_"res" = m dot g - s = m dot a $
$ M_"res" = r dot s = J dot a / r $

#subsubsection("Winkelgeschwindigkeit Raumkapsel")
Eine Raumkapsel mit starr befestigten Sonnensegeln soll ausgerichtet werden. Dazu muss sie um den Winkel $phi = 180°$ um ihre Längsachse gedreht werden. Dazu wird ein Elektromotor - dessen Drehachse parallel zur Längsachse des Raumschiffs ausgerichtet wird, eingeschaltet. \

Das axiale Massenträgheitsmoment des Rotors des Elektromotors ist $J_M = 0.2k g dot m^2$. \

Welche Winkelgeschwindigkeit $omega_R$ der Raumkapsel stellt sich ein, wenn der Motor mit der Drehfrequenz $3000 m i n^(-1) $ rotiert? Die Winkelgeschwindigkeit des Motors ist $omega_M = 2 pi 3000 / 60 = 100 pi$. \

Der Drehimpuls muss erhalten bleiben, daher kann man die beiden Formeln für den Rotationsimpuls um eine Achse gleich stellen:

$ J_M dot omega_M = J_R dot omega_R $
$ dot 100 pi = 3 dot 10^3 dot omega_R $
$ omega_R = 0.021s^(-1) $