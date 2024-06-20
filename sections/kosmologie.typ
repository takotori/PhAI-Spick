= Kosmologie
*Umkreisung in geringer Höhe:* Gravitationskraft zwischen Satelliten und Erde $F_G$ ist gerade das Gewicht $m g$ des Satelliten, welches es er auch auf der Erde hätte
$ m g=(m v^2)/r $

Daraus folgt die Formel für die
#table(
  columns: (50%, 50%),
  fill: (_, row) => if row == 0 { gray },
  [Geschwindigkeit], [Umlaufzeit],
  $v= sqrt(g r)$, [$T=2 pi sqrt(r/g)$]
)

*Geostationär:* Geostationär bedeutet, dass der Satellit gleiche Umlaufzeit $T$ wie die Erde hat. \
($"Umlaufzeit Erde" = T= 24 dot 3600s = 86400s$)

#underline([*Gravitation:*])
#grid(
  columns: (auto, auto),
  inset: 5pt,
  [*Gravitationskraft \ zweier Massenpunkte:*], $ F_G=G (m_1 m_2)/r^2 \ arrow(F_G) =-G (m_1 m_2)/r^2 dot arrow(r)/r $,
  [*Potenzielle Energie:*], $ E_p=-G (m_1 m_2)/r $,
  [*Kreisbahngeschwindigkeit:*], $ v= sqrt((G M_E)/r_E ) $,
  [*Fluchtgeschwindigkei:t*], $ v= sqrt((2G M_E)/r_E ) $,
  [*Energie Änderung \ bei Bahnänderung:* \ #v(5pt)
  $ Delta E &=(G M_E m)/r  (r'-r)/(r' r) \
  r' &= "Radius neue Bahn"$], image("../figures/kosmologie.png")
)

*Potenzielle Energie eines Objekts im Gravitationsfeld eines anderen:*
$ E_p=(G M_E m)/r $

*Beispiel Geostationärer Satellit:*
Welcher Höhe muss Satellit auf Kreisbahn laufen, wenn er geostationär sein soll? \
Erdradius: $r_E= 6.378 dot 10^6 m$ \
Erdmasse: $M_E= 5.98 dot 10^24 k g$ \
Gravitation: $G = 6.673 dot 10^(-11) N dot m^2\/"kg"^2$ \
Hinweis: Für Gewichtskraft nicht $F_G = m g$, sondern \ $F_G = G dot frac(M dot m, r^2)$
1. Umlaufzeit der Erde:
$ T = 24 dot 3600 s = 86400 s $
2. Gravitationskraft mit der Zentrifugalkraft gleichsetzen, da sonst keine Kreisbewegung:
$ G dot frac(M dot m, r^2) = m omega^2 r $
3. $omega$ mit $frac(2 pi, T)$ ersetzen:
$ G dot frac(M dot m, r^2) = m frac(4 pi^2, T^2) r $
4. $m$ kürzen und nach $r$ umstellen:
$ r^3 = frac(G M T^2, 4 pi^2) $
5. Radius $r$ vom Erdradius $r_E$ abziehen:
$ h = root(3, frac(G M T^2, 4 pi^2)) - r_E approx 35800 "km" $  