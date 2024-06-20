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
  [*Gravitationskraft \ zweier Massenpunkte:*], $ F_G=G (m_1 m_2)/r^2 \ arrow(F_G) =-G (m_1 m_2)/r^2 dot arrow(r)/r $,
  [*Potenzielle Energie:*], $ E_p=-G (m_1 m_2)/r $,
  [*Kreisbahngeschwindigkeit:*], $ v= sqrt((G M_E)/r_E ) $,
  [*Fluchtgeschwindigkeit:*], $ v= sqrt((2G M_E)/r_E ) $,
  [*Energie Änderung \ bei Bahnänderung:* \
  $ Delta E &=(G M_E m)/r  (r'-r)/(r' r) \
  r' &= "Radius neue Bahn"$], image("../figures/kosmologie.png")
)

*Potenzielle Energie eines Objekts im Gravitationsfeld eines anderen:*
$ E_p=(G M_E m)/r $
