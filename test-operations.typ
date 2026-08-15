#import "Operations.typ": addition-durees, soustraction-durees

#set text(
  font: "Libertinus Serif",
  size: 10pt,
)

#let test(titre, body) = {
  block(
    width: 30%,
    inset: 8pt,
    stroke: 0.5pt + gray,
    radius: 3pt,
  )[
    *#titre*

    #v(3pt)
    #body
  ]

}

/*
#test(
  [Sans retenue],
  addition-durees(
    (1, 2, 3, 4),
    (2, 3, 4, 5),
  ),
)
#test(
  [Avec retenues],
  addition-durees(
  (1, 2, 45, 50),
  (0, 1, 20, 30),
),
)
#test(
  [Retenue des secondes],
  addition-durees(
    (0, 0, 0, 40),
    (0, 0, 0, 35),
  ),
)

#test(
  [Retenue des minutes],
  addition-durees(
    (0, 0, 45, 0),
    (0, 0, 30, 0),
  ),
)

#test(
  [Retenue des heures],
  addition-durees(
    (0, 20, 0, 0),
    (0, 5, 0, 0),
  ),
)

#test(
  [Propagation complète],
  addition-durees(
    (1, 23, 59, 59),
    (0, 0, 0, 1),
  ),
)

#test(
  [Plus de deux durées],
  addition-durees(
    (1, 2, 45, 50),
    (0, 1, 20, 30),
    (2, 23, 55, 45),
  ),
)
*/

#test(
  [Avec seulement min/sec],
  addition-durees(
    (7, 40), (2, 20)
  )
)

#test(
  [Dépassage 60 min],
  addition-durees(
    (50, 40), (20, 20)
  )
)

#test(
  [ Durées avec nombre arguments différents],
  addition-durees(
    (7, 40, 20), (2, 20)
  )
)
#test(
  [3 durées],
  addition-durees(
    (7, 40, 20), (2, 20), (1,2,3,4)
  )
)

#test(
  [3 durées],
  addition-durees(
    (7, 40, 20), (2, 20), (1,2,3,4)
  )
)

#test(
  [3 durées sans sol.],
  addition-durees(
    (7, 40, 20), (2, 20), (1,2,3,4),
    solution: false
  )
)

#test(
  [Soustraction sans retenue],
  soustraction-durees(
    (7, 40), (2, 20)
  )
)

#test(
  [Soustraction avec retenue],
  soustraction-durees(
    (7, 20), (2, 40),
    show-units: false
  )
)