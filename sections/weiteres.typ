#import "../utils.typ" : *

= Weiteres
== Differential Equations
1. *Bewegungsgleichung aufstellen:*\
  Die Bewegungsgleichung für eine harmonische Schwingung lautet:
  
  $ m dot.double(s)(t) \= -D s(t) $
  
  Umgestellt ergibt sich:
 
  $ dot.double(s)(t) \= -frac(D, m) s(t) $
  

2. *Lösung der Differentialgleichung:*\
  Eine allgemeine Lösung dieser Differentialgleichung ist:

  $ s(t) = A sin(sqrt(frac(D,m))t) + B cos(sqrt(frac(D,m)) t) $

  Dabei sind $A$ und $B$ Konstanten, die durch die Anfangsbedingungen bestimmt werden.

3. *Erste Ableitung der Lösung:* $ dot(s) lr((t)) = A sqrt(D / m) cos lr((sqrt(D / m) t)) - B sqrt(D / m) sin lr((sqrt(D / m) t)) $

4. *Zweite Ableitung der Lösung:* $ dot.double(s) lr((t)) = - A lr((D / m)) sin lr((sqrt(D / m) t)) - B lr((D / m)) cos lr((sqrt(D / m) t)) $ $ dot.double(s) lr((t)) = - D / m lr((A sin lr((sqrt(D / m) t)) + B cos lr((sqrt(D / m) t)))) $ Dies ist konsistent mit der ursprünglichen Differentialgleichung.

5. *Anfangsbedingungen berücksichtigen:*

Setzen wir die Anfangsbedingungen ein, um $A$ und $B$ zu bestimmen.

- *Erste Anfangsbedingung:*
  $s\(0) \= s_0$ $ s lr((0)) = A sin lr((0)) + B cos lr((0)) $ $ s_0 = B dot.op 1 arrow.r.double.long B = s_0 $

- *Zweite Anfangsbedingung:* $dot(s) lr((0)) = v_0$ $ dot(s) lr((0)) = A sqrt(D / m) cos lr((0)) - B sqrt(D / m) sin lr((0)) $ $ v_0 = A sqrt(D / m) arrow.r.double.long A = v_0 / sqrt(D / m) = frac(v_0 m, sqrt(D)) $

Zusammenfassend ergibt sich die Lösung der Bewegungsgleichung unter Berücksichtigung der Anfangsbedingungen: $ s lr((t)) = frac(v_0 m, sqrt(D)) sin lr((sqrt(D / m) t)) + s_0 cos lr((sqrt(D / m) t)) $

Diese Gleichung beschreibt die Bewegung eines harmonischen Oszillators unter Berücksichtigung der Anfangsbedingungen $s lr((0)) = s_0$ und $dot(s) lr((0)) = v_0$.

== Taschenrechner
- *Menu → 3 → 1* für solve()
- *Menu → 3 → 7 → 1* für Gleichungsystem lösen
- *doc → 7 → 2* für Umstellung von Grad auf Rad
- *Menu → 4 → 1* für Ableitungen

== Fundamentum Mathematik und Physik Inhalt
- *Trigometrie:* Seite 26
- *Ableitungen:* Seite 60
- *Kinematik:* Seite 81
- *Kräfte:* Seite 83
- *Energie:* Seite 85