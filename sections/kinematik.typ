= Kinematik
#grid(
  columns: (auto, auto),
  gutter: 5pt,
  [*Mittlere Geschwindigkeit:*], [*$macron(v) = (Delta v)/(Delta s)$*],
  [*Mittlere Beschleunigung:*], [*$macron(a) = (Delta v)/(Delta t)$*],
  [*Gleichförmige Bewegung:*], [*$s = s_0 + v dot t a => s/v = t $*],
  [*Geradlinige Bewegung:*], [$Delta s= macron(v) ̅Delta t$]
)
*Gleichmässig beschleunigte Bewegung:*
$
s &= s_0+v_0 dot t+1/2 a t^2 \
v &= v_0+a t \
v^2&=v_0^2+2a(s-s_0) => "wenn" v_0=0 => s=v^2/(2a) \
macron(v) &= (v_1 + v_2)/2 \
t&=  v/a=(v_0-v)/a
$

== Gleichförmige Kreisbewegung ($omega$ = konst.)
#grid(
  columns: (auto, auto, auto),
  gutter: 5pt,
[*Umlaufzeit:*],	[$T$],[$[T]=s$],
[*Frequenz:*],	[$f= 1/T$],[$[f]= s^(-1) = "Hz"$],
[*Winkelkoordinate:*],	[$phi= b/r$],[$[phi]="rad"=m/m$],
[*Winkel-geschwindigkeit:*],[$omega&=Delta phi/Delta t \ &=2pi/T=2pi f$],[$[omega]="rad"/s$]
)
#grid(
  columns: (60%, auto),
  gutter: 5pt,
[*Bahngeschwindigkeit:*],	[$v=r omega$],
[*Zentripetalbeschleunigung:*],	[$a_z= v^2/r=r omega^2$],
[*Tangentialgeschwindigkeit:*],	[$v_T= (2pi r)/T$],
[*Radialbeschleunigung/ \ Zentripetalbeschleunigung:*],	[$a_r=(4pi^2 r)/T^2$],
[*Tangentialbeschleunigung:*],	[$a_T=(v_1-v_0)/t$],
[*Kreisbewegung Funktion:*],	[$r(t)=r vec(cos(w t+phi_0),sin(w t+phi_0))$],
[*Radialgeschwindigkeit:*],	[$v="Umfang"/T$]
)
#image("../figures/gleichkreisbewegung.png")

== Schiefer Wurf
*Bewegungsgleichung:* 
#align(right, $arrow(r) (t)= arrow(r_0) + arrow(v_0 ) t+1/2 arrow(g) t^2$)
\
#align(center, 
$vec(x(t), y(t)) = vec(0,y_0) + v_0 vec(cos(alpha), sin(alpha)) dot t + 1/2 vec(0,-g) t^2$
)

#image("../figures/schieferwurf.png")

#grid(
  columns: (50%, 50%),
  gutter: 5pt,
$ 
y =& x dot tan(alpha_0) - g / (2 v_0^2 cos^2(alpha_0)) \ &dot x^2 \
y_(max) &= (v_0^2 sin^2(alpha_0))/(2g) \
x_w &=(v_0^2 sin(2 alpha_0))/g
$,
image("../figures/schieferWurf2.png")
)
