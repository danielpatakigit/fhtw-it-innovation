#set document(title: "Assignment #2 – Notes")
#set page(margin: 2cm)
#set text(font: "IBM Plex Sans", size: 10.5pt, lang: "de")
#set par(justify: true)

#align(center)[
  #text(size: 16pt, weight: "bold")[Assignment #2 – Innovationsmanagement]
  #v(0.2cm)
  #text(size: 11pt)[Projekt-Notizen · Gestartet mit Arbeitsblatt `DisruptPOSTAG_LV2.docx` · VO2, 18.09.2026]
]

#line(length: 100%)

#v(0.25cm)

== 1 Challenge the Problem

*Ausgangspunkt:* priorisiertes Problem aus Assignment #1 — in _einem_ Satz.

- *Problem:* Flexiblere Auslieferung (Zeit und Ort).

*Warum entsteht dieses Problem?* (mindestens 3× fragen)

- Kunden sind verhindert, Pakete zu vorgegebenen Zeiten anzunehmen.
- Zu wenig Personal auf Ausliefererseite, das zu unflexibel ist.

*Was wissen wir aus Quellen – was nehmen wir nur an?*

- Statistik und Rezensionen.
- Öffentlich bekannte Geschäftsmodelle oder Geschäftsberichte.

*Eigentliche Ursache des Problems (Output: 1 Root Problem + wichtigste Evidenz und Annahmen):*

#block(fill: rgb("#eef2f7"), inset: 6pt, radius: 4pt)[
  Zustelldienste sind primär auf Kosteneffizienz durch standardisierte Routen und Zeitfenster ausgelegt,
  wodurch individuelle Flexibilität für Kunden (Zeit/Ort) strukturell zu kurz kommt — _ABER_ Kunden wünschen sich dies.
]

== 2 Who owns the Pain?

_Stakeholder-Liste (Pain / Einfluss / Bereitschaft zur Veränderung, je 1–5) + ausgewählter Haupt-Stakeholder._

#table(
  columns: 6,
  align: (left, center, center, center, center, center),
  stroke: 0.5pt + luma(140),
  inset: 4pt,
  table.header(
    [#text(weight: "bold")[]],
    [#text(weight: "bold")[S1 Privatperson]],
    [#text(weight: "bold")[S2 Lieferant]],
    [#text(weight: "bold")[S3 Online-Händler]],
    [#text(weight: "bold")[S4 Verteilerzentrum]],
    [#text(weight: "bold")[S5 Filialangestellte]],
  ),
  [PAIN], [5], [4], [3], [2], [3],
  [Einfluss], [1], [2], [5], [3], [1],
  [Bereitschaft zur Veränderung], [5], [2], [5], [4], [5],
  table.cell(fill: luma(235), stroke: 0.5pt + luma(200))[#text(weight: "bold")[Auswahl]], [], [], [X], [], [],
)

_Haupt-Stakeholder:_ Online-Händler.

== 3 Problem Persona

- *WHO:* Online-Händler, die mit schneller und pünktlicher Lieferung werben möchten.
- *JOB:* Maximale Zufriedenheit der Kunden, dadurch Marktführer im Auslieferungsbereich / Marktvorteile erreichen.
- *PAIN:* Mangelnde Infrastruktur und Technologie.
- *CURRENT SOLUTION:* Unterschiedliche Lieferanten/Sublieferanten, da am kostengünstigsten.
- *FRUSTRATION:* Auslieferung durch Sublieferanten — insbesondere Flexibilität und gleichbleibende Qualität bei steigender Menge.
- *DESIRED OUTCOME:* Zufriedenere Kunden: Kunden mehr Flexibilität bieten.

#block(fill: rgb("#eef2f7"), inset: 6pt, radius: 4pt)[
  *1 Problem Persona:* Ein wachstumsorientierter Online-Händler will sich durch schnelle, flexible Lieferung vom
  Wettbewerb abheben, scheitert aber an fehlender eigener Infrastruktur und muss daher auf kostengünstige
  Sublieferanten setzen, die bei steigendem Volumen weder Flexibilität noch gleichbleibende Qualität liefern können.
  Sein Wunsch: zufriedenere Kunden durch mehr Lieferflexibilität, ohne dabei an Qualität einzubüßen.
]

== 4 Problem Statement Battle

*Formel:* [Stakeholder] möchte [Ziel], kann dies aber nicht gut, weil [Ursache]. Dadurch entsteht [Konsequenz].

- *Amelie:* Amazon möchte höhere Kundenzufriedenheit bei Lieferungen erreichen, kann dies aber nicht gut, weil Lieferzeiten und -orte unflexibel sind und sich nicht an die Kundenbedürfnisse anpassen. Dadurch entsteht extra Aufwand für die Kunden und dadurch höhere Unzufriedenheit.
- *Patrick:* Der Online-Händler möchte flexible und schnelle Lieferung anbieten, kann dies aber nicht gut, weil bestehende Infrastrukturen und Technologien dies nicht erlauben. Dadurch entstehen negative Kundenerfahrungen und Rezensionen.
- *Mateja:* Zalando möchte Lieferungen auch in ländlichen Gebieten flexibel anbieten, kann dies aber derzeit nicht gut, weil die bestehenden Sublieferanten zu unzuverlässig sind und die Post AG nicht flexibel/zuverlässig genug — meist nur ein Postbote in ländlichen Gebieten; fällt er aus, erhält niemand die Pakete. Dadurch entsteht großer Missmut bei den Kunden.
- *Kamil:* Online-Händler möchte zuverlässige Lieferungen in Peak-Zeiten (Weihnachten) gewährleisten, kann dies aber nicht gut, weil auf günstige Subunternehmer zurückgegriffen werden muss, die keine Zuverlässigkeit bieten können. Dadurch kann die gewünschte Qualität nicht geliefert werden.
- *Dani:* Ein Großkunde der Post AG (z. B. Amazon DE) möchte seine Pakete in Österreich schnell, qualitativ und in großen Mengen ausliefern lassen, kann dies aber nicht gut, weil es an politischen und logistischen Nachteilen leidet. Dadurch entsteht eine wachsende und transitive Kundenunzufriedenheit.

#block(fill: rgb("#eef2f7"), inset: 6pt, radius: 4pt)[
  *Finales Problem Statement:* Online-Händler (z. B. Amazon, Zalando) möchten ihren Kunden *flexible, schnelle und
  zuverlässige Lieferungen* — unabhängig von Ort (auch ländliche Gebiete), Zeit und Saison (auch Peak-Zeiten wie
  Weihnachten) — anbieten, können dies aber nicht gut, weil bestehende Infrastrukturen, Technologien und
  Sublieferanten unflexibel, unzuverlässig und in kritischen Regionen strukturell unzureichend (z. B. Einzelpostbote,
  politische/logistische Nachteile) sind. Dadurch entstehen höherer Aufwand, negative Kundenerfahrungen, schlechte
  Rezensionen und wachsende Kundenunzufriedenheit — mit direkten Auswirkungen auf Markenwahrnehmung und
  Wettbewerbsfähigkeit.
]

== 5 Kill the Company!

*Leitfrage:* Welche Innovation könnte dazu führen, dass Kunden euer Unternehmen in 5 Jahren nicht mehr brauchen?
(Keine Verbesserung des bestehenden Produkts — neue Technologien, Prozesse, Geschäftsmodelle.)

*Ideen (2 pro Person, je alleine):*

- Pakete/Briefe zum Kunden beamen
- Gedankenübertragung statt Briefe
- Drohnenlieferung an jedes Haus mit Landeplatz und Verteilerzentrum pro Haus
- Drohnenlieferung mit Drohnenfahrzeugen mit mobilen Zentralen
- Postkanone
- Rohrpost zwischen den größten Lagerorten (tief unterirdisch)
- 3D-Drucker, die alles zuhause drucken können — Produkte müssen nicht mehr verschickt werden, sondern werden direkt zuhause produziert

*Output:* mindestens 10 disruptive Ideen — *ausstehend*.

== 6 AI: Make it more disruptive!

*Anmerkung:* Task 6 steht nicht im Arbeitsblatt (`DisruptPOSTAG_LV2.docx`), sondern in den VO2-Folien — daher komplett offen.

*Vorgehen — AI als Ideen-Verstärker:*

- Gebt der AI euer finales Problem Statement und eure 10 Ideen.
- Lasst die AI Ideen kombinieren, radikalisieren oder aus einer anderen Branche neu denken.
- Prüft kritisch: Ist die neue Idee wirklich besser und disruptiver?
- Wählt gemeinsam eure 3 stärksten Ideen.
- Dokumentiert: Was kam von euch? Was hat AI verändert?

*Output:* 3 weiterentwickelte Disruptionsideen — *ausstehend*.