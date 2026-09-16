// Post AG — text-only presentation port from Canva/PPTX
// Single-file Typst source. Project fonts live in assets/fonts.

#set page(width: 16cm, height: 9cm, margin: 0cm)
#set text(font: "IBM Plex Sans", size: 7pt, fill: rgb("#202833"))
#set par(leading: 0.5em)

// Canvas colors are semantic: problem, solution, value, customer, and economics.
#let navy = rgb("#172B3A")
#let ink = rgb("#18232D")
#let muted = rgb("#64727C")
#let gold = rgb("#E76F51")
#let paper = rgb("#F4F7F8")
#let cream = rgb("#FFFFFF")
#let pale = rgb("#EEF2F5")
#let blue = rgb("#E5EAF0")
#let darkcard = rgb("#1F3A5F")
#let gridline = rgb("#CBD5DF")
#let problem-accent = rgb("#BA5147")
#let problem-tint = rgb("#F8E5E2")
#let solution-accent = rgb("#3C6E9E")
#let solution-tint = rgb("#E4EEF8")
#let value-accent = rgb("#A66A18")
#let value-tint = rgb("#FBEED6")
#let customer-accent = rgb("#765A9D")
#let customer-tint = rgb("#EEE8F6")
#let economics-accent = rgb("#53687D")
#let economics-tint = rgb("#E8EEF3")

#let bg() = [
  #place(top + left, dx: 0cm, dy: 0cm, rect(width: 16cm, height: 9cm, fill: paper))
]

#let slide-no(n) = [
  #place(bottom + center, dy: -0.15cm, text(size: 5pt, fill: muted)[#n])
]

#let header(title) = [
  #place(top + left, dx: 0cm, dy: 0cm, rect(width: 16cm, height: 0.16cm, fill: darkcard))
  #place(top + left, dx: 0.45cm, dy: 0.34cm, text(size: 4.5pt, weight: "bold", fill: darkcard)[VERSTEHEN / CHALLENGE ASSIGNMENT 01])
  #place(top + left, dx: 0.45cm, dy: 0.60cm, text(size: 15pt, weight: "bold", fill: ink)[#title])
  #place(top + right, dx: -0.45cm, dy: 0.60cm, text(size: 5pt, fill: muted)[ÖSTERREICHISCHE POST AG])
]

#let card(_, body) = [
  #block(width: 100%, fill: blue, stroke: none, inset: (x: 3pt, y: 2.4pt))[
    #set text(size: 4.3pt, fill: ink)
    #align(center)[#body]
  ]
  #v(0.4pt)
]

// Reserve this denser treatment for the few long Canvas entries.
#let compact-card(body) = [
  #block(width: 100%, fill: blue, stroke: none, inset: (x: 2.6pt, y: 1.8pt))[
    #set text(size: 3.8pt, fill: ink)
    #align(center)[#body]
  ]
  #v(0.25pt)
]

#let cell(x, y, width, height, title, _, _, body) = [
  #place(top + left, dx: x, dy: y, block(width: width, height: height, fill: cream, stroke: 0.4pt + gridline, inset: 0pt)[
    #block(width: 100%, fill: pale, inset: (x: 4pt, y: 2pt))[#align(center)[#text(size: 4.6pt, weight: "bold", fill: navy)[#title]]]
    #line(length: width, stroke: 0.4pt + gridline)
    #v(1fr)
    #block(width: 100%, inset: 2.5pt)[#body]
    #v(1fr)
  ])
]

#let lean-layout(title, problem, solution, offer, advantage, segments, alternatives, metrics, channels, early, costs, revenue, n) = [
  #bg()
  #header(title)
  #cell(0.45cm, 1.35cm, 2.90cm, 2.50cm, [01 PROBLEM], problem-accent, problem-tint)[#problem]
  #cell(3.35cm, 1.35cm, 2.90cm, 2.50cm, [02 LÖSUNG], solution-accent, solution-tint)[#solution]
  #cell(6.25cm, 1.35cm, 3.50cm, 4.85cm, [04 EINZIGARTIGES ANGEBOT], value-accent, value-tint)[#offer]
  #cell(9.75cm, 1.35cm, 2.90cm, 2.50cm, [05 UNFAIRER VORTEIL], value-accent, value-tint)[#advantage]
  #cell(12.65cm, 1.35cm, 2.90cm, 2.50cm, [07 KUNDENSEGMENTE], customer-accent, customer-tint)[#segments]

  #cell(0.45cm, 3.85cm, 2.90cm, 2.35cm, [BESTEHENDE ALTERNATIVEN], problem-accent, problem-tint)[#alternatives]
  #cell(3.35cm, 3.85cm, 2.90cm, 2.35cm, [03 WICHTIGE METRIKEN], economics-accent, economics-tint)[#metrics]
  #cell(9.75cm, 3.85cm, 2.90cm, 2.35cm, [06 KANÄLE], solution-accent, solution-tint)[#channels]
  #cell(12.65cm, 3.85cm, 2.90cm, 2.35cm, [EARLY ADOPTER], customer-accent, customer-tint)[#early]

  #cell(0.45cm, 6.20cm, 7.55cm, 2.30cm, [08 KOSTENSTRUKTUR], economics-accent, economics-tint)[#costs]
  #cell(8.00cm, 6.20cm, 7.55cm, 2.30cm, [09 EINNAHMEQUELLEN], economics-accent, economics-tint)[#revenue]
  #place(bottom + right, dx: -0.32cm, dy: -0.15cm, text(size: 5pt, fill: muted)[#n])
]

#let two-cols(left, right) = [
  #grid(columns: (1fr, 1fr), gutter: 0.12cm)[#left][#right]
]

#let process-step(number, title, body) = [
  #text(size: 7pt, weight: "bold", fill: gold)[#number]
  #v(0.16cm)
  #text(size: 5.9pt, weight: "bold", fill: white)[#title]
  #v(0.18cm)
  #text(size: 5pt, fill: rgb("#D8E6EA"))[#body]
]

#let research-panel(title, accent, body) = [
  #block(width: 100%, height: 100%, fill: cream, stroke: 0.4pt + gridline, inset: 10pt)[
    #text(size: 5pt, weight: "bold", fill: accent)[#title]
    #v(0.24cm)
    #line(length: 100%, stroke: 0.6pt + accent)
    #v(0.24cm)
    #set text(size: 6pt, fill: ink)
    #body
  ]
]

#let work-question-canvas(n) = [
  #lean-layout(
    [Lean Startup Canvas],
    [#card(blue)[Welches Problem lösen wir für unsere Nutzer?] #card(blue)[Welche Lücken schließen wir für unsere Kunden?]],
    [#card(blue)[Wie gehen wir auf die Bedürfnisse der Nutzer ein?] #card(blue)[Welches Erlebnis wollen wir Kunden bieten?]],
    [#card(darkcard)[Was macht unsere Idee einzigartig?] #card(blue)[Was unterscheidet sie von bestehenden Lösungen?]],
    [#card(blue)[Was haben wir, das andere nicht replizieren oder erwerben können?] #card(blue)[Beispiele: Unser Netzwerk, exklusive Daten oder Ruf]],
    [#card(blue)[Wer sind unsere Zielnutzer?] #card(blue)[Wer sind unsere Zielkunden?]],
    [#card(blue)[Wer sind unsere nächsten Konkurrenten?] #card(blue)[Worauf verlassen sich unsere Kunden derzeit?]],
    [#card(blue)[Wie verfolgen wir unseren Fortschritt?] #card(blue)[Was sind unsere Erfolgskriterien?]],
    [#card(darkcard)[Wie erreichen wir unsere Zielgruppen?]],
    [#card(blue)[Wer wird unser Rohprodukt oder unsere Dienstleistung verwenden?] #card(blue)[Wer wird davon profitieren?]],
    [#card(blue)[Was sind unsere Fixkosten?] #card(blue)[Was sind unsere variablen Kosten?]],
    [#card(blue)[Wie werden wir Umsatz von unseren Nutzern generieren?] #card(blue)[Tipp: Geh jedes Zielkundensegment durch]],
    n,
  )
]

// 1 — Title
#bg()
#place(top + left, dx: 0cm, dy: 0cm, rect(width: 6.05cm, height: 9cm, fill: navy))
#place(top + left, dx: 0.55cm, dy: 0.72cm, text(size: 4.8pt, weight: "bold", fill: gold)[FH TECHNIKUM WIEN / IT INNOVATION])
#place(top + left, dx: 0.55cm, dy: 2.65cm, text(size: 29pt, weight: "bold", fill: white)[DISRUPT])
#place(top + left, dx: 0.55cm, dy: 4.05cm, text(size: 29pt, weight: "bold", fill: white)[POST AG])
#place(top + left, dx: 0.55cm, dy: 7.35cm, line(length: 1.9cm, stroke: 1.2pt + gold))
#place(top + left, dx: 6.70cm, dy: 2.75cm, text(size: 7pt, fill: muted)[Challenge Assignment 01])
#place(top + left, dx: 6.70cm, dy: 3.28cm, text(size: 14pt, weight: "bold", fill: ink)[Kundenprobleme verstehen.])
#place(top + left, dx: 6.70cm, dy: 7.95cm, text(size: 5pt, fill: muted)[Bienias Kamil, Bulut Aylin, Juricevic Mateja, Kern Amelie, Pataki Dániel, Schreiner Patrick])
#slide-no(1)
#pagebreak()

// 2 — Lean Canvas: Peak season, compact state
#lean-layout(
  [Lean Startup Canvas],
  [#card(blue)[Fehlende Kapazitätsreserven] #card(blue)[Rufschädigung von Händlerinnen]],
  [#card(blue)[Zusätzliche Mitarbeitende] #card(blue)[Überstunden/ Schichtausweitung]],
  [#card(darkcard)[Auch bei Rekordmengen gleichbleibende Zustelltermine]],
  [#card(blue)[Ganzjährige landesweite Infrastruktur] #card(blue)[Eingespielte Prozesse]],
  [#card(darkcard)[Große Onlinehändler] #card(blue)[KMU ohne eigene Kapazitätsplanung]],
  [#card(blue)[Wettbewerber beauftragen] #card(blue)[Frühere Versandtermine]],
  [#card(blue)[Tagesrekord 2025: 1,65 Mio. Pakete] #card(blue)[\+ 232 Mio. Pakete in 2025 in AT]],
  [#card(blue)[Frühe Kapazitätsplanung] #card(blue)[Kommunikation von Versandfristen]],
  [#card(blue)[Umsatzkonzentrierte Saison-Händler]],
  [#two-cols([#card(blue)[Saisonales Zusatzpersonal] #card(blue)[Überstunden + Wochenenddienste]], [#card(blue)[Ausgeweitetes Monitoring]])],
  [#two-cols([#card(blue)[Peak-Saison (Mengenwachstum)]], [#card(blue)[Premium-/Express-Zuschläge]])],
  2,
)
#pagebreak()

// 3 — Lean Canvas: Peak season, detailed state from hidden PPTX slide
#lean-layout(
  [Lean Startup Canvas],
  [#compact-card[Fehlende Kapazitätsreserven in Spitzenzeiten: Paketaufkommen verdoppelt sich zur Weihnachtszeit, das Gesamtsystem erreicht die Kapazitätsgrenze] #compact-card[Verspätete oder ausbleibende Weihnachtslieferungen beschädigen primär die Marke der Händlerinnen]],
  [#card(blue)[1000 zusätzliche Mitarbeitende in den Wochen vor Weihnachten] #card(blue)[Überstunden/ Schichtausweitung]],
  [#card(darkcard)[Post AG verspricht auch bei Rekordmengen gleichbleibende Zustelltermine dank jahrzehntelanger, erfahrener Logistikinfrastruktur]],
  [#compact-card[Einzige Zustellorganisation mit ganzjähriger landesweiter Infrastruktur] #compact-card[Eingespielte Prozesse aus jährlich wiederkehrenden Rekordauslieferungen]],
  [#card(darkcard)[Große Onlinehändler] #card(blue)[KMU ohne eigene Kapazitätsplanung]],
  [#card(blue)[Wettbewerber (DHL, DPD, GLS) zusätzlich für Spitzenzeiten beauftragen] #card(blue)[Händler planen eigene frühere Versandtermine]],
  [#card(blue)[Tagesrekord Dezember 2025: 1,65 Mio. Pakete (sonst durchsch. 800.000/Tag)] #card(blue)[über 232 Mio. Pakete in Österreich gesamt im Jahr 2025]],
  [#card(blue)[Frühe Kapazitätsplanung mit Großversendern] #card(blue)[Kommunikation von Versandfristen an Kunden (Website, Filiale)]],
  [#card(blue)[Umsatzkonzentrierte Saison-Händler]],
  [#two-cols([#card(blue)[Saisonales Zusatzpersonal] #card(blue)[Überstunden + Wochenenddienste]], [#card(blue)[Ausgeweitetes Monitoring in Spitzenzeiten]])],
  [#two-cols([#card(blue)[Peak-Saison als größter Umsatztreiber des Jahres (Mengenwachstum)]], [#card(blue)[Premium-/Express-Zuschläge für garantierte Zustelltermine]])],
  3,
)
#pagebreak()

// 4 — Peak season: restored hidden slide
#bg()
#place(top + left, dx: 0.70cm, dy: 0.70cm, text(size: 4.8pt, weight: "bold", fill: solution-accent)[SPITZENZEITEN])
#place(top + left, dx: 0.70cm, dy: 1.18cm, text(size: 18pt, weight: "bold", fill: ink)[Operative Maßnahmen])
#place(top + left, dx: 0.70cm, dy: 2.30cm, text(size: 7pt, fill: muted)[Bestehende Reaktion auf außergewöhnliches Paketaufkommen.])
#place(top + left, dx: 0.70cm, dy: 2.85cm, block(width: 14.60cm, height: 3.90cm, fill: navy, inset: 16pt)[
  #text(size: 5pt, weight: "bold", fill: gold)[KAPAZITÄTSMANAGEMENT]
  #v(0.28cm)
  #text(size: 19pt, weight: "bold", fill: white)[Überstunden]
  #v(0.10cm)
  #text(size: 19pt, weight: "bold", fill: gold)[\+ Wochenenddienste]
])
#place(top + left, dx: 0.70cm, dy: 7.20cm, line(length: 2.10cm, stroke: 1.1pt + solution-accent))
#place(top + left, dx: 0.70cm, dy: 7.62cm, text(size: 6.5pt, fill: ink)[Die Maßnahme ergänzt saisonales Zusatzpersonal in Spitzenzeiten.])
#slide-no(4)
#pagebreak()

// 5 — Lean Canvas: Retouren
#lean-layout(
  [Lean Startup Canvas],
  [#card(blue)[Händler haben hohe operative Kosten und Komplexität durch Retouren.] #card(blue)[Steigende Retourmengen und hoher Anspruch der Privatkund\*innen bei Retouren.]],
  [#card(blue)[Nationale & Internationale Retouren; sehr detailliertes Postnetz in Österreich] #card(blue)[Business Cockpit, Tracking und Labeling Center]],
  [#card(darkcard)[Die Post AG übernimmt nicht nur den Versand & die Zustellung, sondern übernimmt auch volle Verantwortung über Retouren.] #card(darkcard)[Was unterscheidet sie von bestehenden Lösungen?]],
  [#card(blue)[österreichweites Post-netzwerk] #card(blue)[Vertrauen von österreichischen Kund\*innen]],
  [#card(blue)[e-commerce] #card(blue)[online-händler]],
  [#card(blue)[andere Versandservices wie zB. GLS & DPD] #card(blue)[auch Eigenzustellung bei großen Kunden (zB. Amazon)]],
  [#card(blue)[Retourenquote (54% in 2026)] #card(blue)[Kosten pro Retoure]],
  [#card(darkcard)[E-commerce-Plattform & Paket-Vertriebsmitarbeiter:innen] #card(blue)[Bestehendes österreichweites Post-netzwerk]],
  [#card(blue)[Kund\*innen mit besonders hoher Retourenrate]],
  [#card(blue)[Fahrzeuge und Energie; IT & Tracking-Systeme; Paketstationen / SB-Zonen; Lager- und Fulfillment-Infrastruktur; Retourenlogistik; internationale Logistik] #card(blue)[Zusteller:innen und Personal]],
  [#card(blue)[Paketversand & Retouren] #card(blue)[Retourenmanagement und Logistik]],
  5,
)
#pagebreak()

// 6 — Lean Canvas: Flexible Empfangsoptionen
#lean-layout(
  [Lean Startup Canvas],
  [#compact-card[Empfänger sind zum Zustellzeitpunkt häufig nicht zuhause - eine persönliche Paketübergabe ist nicht möglich.] #compact-card[Fehlgeschlagene Übergaben verursachen zusätzliche Wege, Wartezeit und Aufwand für Empfänger:innen und Post.]],
  [#card(blue)[Flexible Empfangsoptionen über Post App, Post Account: Wunsch-Platz, Wunsch-Nachbar, Poststation oder Post-Standort.] #card(blue)[Paket sicher und möglichst ohne zusätzlichen Aufwand erhalten]],
  [#card(darkcard)[“Pakete flexibel empfangen”] #card(blue)[Kombination aus Hauszustellung, Wunsch-Platz, Wunsch-Nachbar, Empfangsbox, Poststation, Filialnetz]],
  [#compact-card[Bereits vorhandenes flächendeckendes Zustell- und Abholnetz in ganz Österreich.] #compact-card[Was haben wir, das andere nicht replizieren oder erwerben können?]],
  [#card(blue)[Private Paketempfänger, Online-Shopper] #card(blue)[Onlinehändler]],
  [#compact-card[DPD, GLS, Amazon Logistics sowie weitere Paketdienste mit Paketshops/-stationen.] #compact-card[NachbarInnen, Abstellgenehmigung/Wunsch-Platz, Poststation, Postfiliale/Postpartner, Empfangsbox oder Paketumleitung.]],
  [#compact-card[1.596 Poststationen mit 188.349 Fächern und 84.546 Empfangsboxen, \<35 Mio. Sendungen abgewickelt] #compact-card[Anteil erfolgreicher Zustellungen ohne zusätzlichen Zustellversuch, Nutzung alternativer Empfangsoptionen, Kundenzufriedenheit]],
  [#card(darkcard)[Post App, Website, Tracking & digitale Benachrichtigungen]],
  [#card(blue)[Privathaushalte, Berufstätige, urbane Haushalte]],
  [#card(blue)[Sortier- und Logistikinfrastruktur, Paketstationen, Empfangsboxen, Filialnetz, Fahrzeuge] #card(blue)[Zustellpersonal, Energie, zusätzliche Zustellvorgänge, Lagerung Pakete, Betrieb der Box-Infrastruktur]],
  [#card(blue)[Paketentgelte der Onlinehändler, Paketversand durch Privatkunden]],
  6,
)
#pagebreak()

// 7 — Lean Canvas: Arbeitsfragen
#work-question-canvas(7)
#pagebreak()

// 8 — Arbeitsfragen
#bg()
#header([Arbeitsfragen])
#place(top + left, dx: 0.45cm, dy: 1.50cm, block(width: 7.25cm, height: 5.65cm, fill: cream, stroke: 0.4pt + gridline, inset: 12pt)[
  #text(size: 5pt, weight: "bold", fill: darkcard)[PROBLEM UND NUTZER]
  #v(0.22cm)
  #card(blue)[Welches Problem lösen wir für unsere Nutzer?]
  #card(blue)[Welche Lücken schließen wir für unsere Kunden?]
  #card(blue)[Wer sind unsere Zielnutzer und Zielkunden?]
  #card(blue)[Worauf verlassen sich unsere Kunden derzeit?]
  #card(blue)[Wer wird unser Rohprodukt oder unsere Dienstleistung verwenden?]
])
#place(top + left, dx: 8.30cm, dy: 1.50cm, block(width: 7.25cm, height: 5.65cm, fill: cream, stroke: 0.4pt + gridline, inset: 12pt)[
  #text(size: 5pt, weight: "bold", fill: gold)[ANGEBOT UND WIRKUNG]
  #v(0.22cm)
  #card(darkcard)[Was macht unsere Idee einzigartig?]
  #card(blue)[Wie gehen wir auf die Bedürfnisse der Nutzer ein?]
  #card(blue)[Was haben wir, das andere nicht replizieren oder erwerben können?]
  #card(blue)[Wie verfolgen wir unseren Fortschritt und unsere Erfolgskriterien?]
  #card(blue)[Wie erreichen wir unsere Zielgruppen?]
])
#place(top + left, dx: 0.45cm, dy: 7.55cm, block(width: 15.10cm, height: 0.65cm, fill: pale, inset: 5pt)[
  #align(center)[#text(size: 4.8pt, fill: ink)[Kostenstruktur, Einnahmequellen und Zielkundensegmente im nächsten Schritt konkretisieren.]]
])
#slide-no(8)
#pagebreak()

// 9 — Prozess
#bg()
#place(top + left, dx: 0cm, dy: 0cm, rect(width: 6.25cm, height: 9cm, fill: navy))
#place(top + left, dx: 0.55cm, dy: 0.62cm, text(size: 4.8pt, weight: "bold", fill: gold)[VORGEHEN])
#place(top + left, dx: 0.55cm, dy: 1.12cm, block(width: 2.35cm, height: 3.05cm)[#process-step([01], [Umsatzstärken des Unternehmens], [Paket & Logistik #linebreak() 1.720 Mio. EUR #linebreak() #v(0.1cm) Brief & Werbepost #linebreak() 1.155 Mio. EUR])])
#place(top + left, dx: 3.25cm, dy: 1.12cm, block(width: 2.35cm, height: 3.05cm)[#process-step([02], [Vision und Kundensegmente], [Führende E-Commerce-Partner in AT #linebreak() #v(0.1cm) Dienstleistungen des Alltags: Post und Bank für Privatpersonen])])
#place(top + left, dx: 0.55cm, dy: 4.78cm, block(width: 2.35cm, height: 3.05cm)[#process-step([03], [Kundenprobleme vertiefen], [Eigene Erfahrungen mit Zustellern verglichen und Presseaussendungen durchgegangen])])
#place(top + left, dx: 3.25cm, dy: 4.78cm, block(width: 2.35cm, height: 3.05cm)[#process-step([04], [Bestehende Lösungen prüfen], [Lösungen und Alternativen laut Nachrichtenaussendungen passend zum Problem recherchiert])])
#place(top + left, dx: 6.85cm, dy: 0.80cm, text(size: 4.8pt, weight: "bold", fill: darkcard)[RECHERCHEPROZESS])
#place(top + left, dx: 6.85cm, dy: 1.25cm, text(size: 20pt, weight: "bold", fill: ink)[PROZESS])
#place(top + left, dx: 6.85cm, dy: 2.36cm, line(length: 1.9cm, stroke: 1.2pt + gold))
#place(top + left, dx: 6.85cm, dy: 3.10cm, block(width: 7.85cm, height: 3.85cm, fill: cream, stroke: 0.4pt + gridline, inset: 12pt)[
  #text(size: 5pt, weight: "bold", fill: darkcard)[VERWENDETE QUELLEN]
  #v(0.24cm)
  #text(size: 6.5pt, fill: ink)[Geschäftsbericht und Unternehmensreport der Post AG #v(0.22cm) Presseaussendungen von Post, ORF und APA #v(0.22cm) Eigene Erfahrungen mit Zustellern #v(0.22cm) KI-gestützte Websuche]
])
#slide-no(9)
#pagebreak()

// 10 — Recherche
#bg()
#place(top + left, dx: 0.70cm, dy: 0.70cm, text(size: 4.8pt, weight: "bold", fill: darkcard)[REFLEXION])
#place(top + left, dx: 0.70cm, dy: 1.12cm, text(size: 17pt, weight: "bold", fill: ink)[RECHERCHE: WAS TRÄGT?])
#place(top + left, dx: 0.70cm, dy: 2.10cm, text(size: 7pt, fill: muted)[Ein kurzer Blick auf Quellen und Hilfsmittel.])
#place(top + left, dx: 0.70cm, dy: 3.05cm, text(size: 7pt, weight: "bold", fill: darkcard)[HILFREICH])
#place(top + left, dx: 8.25cm, dy: 3.05cm, text(size: 7pt, weight: "bold", fill: gold)[NOCH OFFEN])
#place(top + left, dx: 0.70cm, dy: 3.55cm, block(width: 6.95cm, height: 3.25cm)[#research-panel([PRIMÄRQUELLEN UND EINORDNUNG], darkcard, [
- Geschäftsberichte und Unternehmensbeschreibung #v(0.16cm)
- Aktuelle Fachpressemeldungen aus 2025 #v(0.16cm)
- KI-gestützte Websuche und Artikelzusammenfassungen
])])
#place(top + left, dx: 8.25cm, dy: 3.55cm, block(width: 6.95cm, height: 3.25cm)[#research-panel([LÜCKEN IM MATERIAL], gold, [
- xxx #v(0.16cm)
- xxx
])])
#slide-no(10)
#pagebreak()

// 11 — Closing
#bg()
#place(top + left, dx: 0cm, dy: 0cm, rect(width: 16cm, height: 9cm, fill: navy))
#place(top + left, dx: 1.00cm, dy: 1.00cm, text(size: 4.8pt, weight: "bold", fill: gold)[ÖSTERREICHISCHE POST AG / CHALLENGE ASSIGNMENT 01])
#place(top + left, dx: 1.00cm, dy: 3.25cm, text(size: 31pt, weight: "bold", fill: white)[DANKE])
#place(top + left, dx: 1.00cm, dy: 5.18cm, line(length: 2.15cm, stroke: 1.2pt + gold))
#place(top + left, dx: 1.00cm, dy: 6.05cm, text(size: 7pt, fill: rgb("#D8E6EA"))[Nächster Schritt: Probleme priorisieren und weiter untersuchen.])
#slide-no(11)
