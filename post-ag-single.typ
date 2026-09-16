// Post AG — text-only presentation port from Canva/PPTX
// Single-file Typst source. No images or external assets.

#set page(width: 16cm, height: 9cm, margin: 0cm)
#set text(font: "Arial", size: 7pt, fill: rgb("#202833"))
#set par(leading: 0.45em)

#let navy = rgb("#1d3146")
#let ink = rgb("#202833")
#let muted = rgb("#6d7682")
#let gold = rgb("#d8a928")
#let paper = rgb("#f7f4ec")
#let cream = rgb("#fff3cf")
#let pale = rgb("#fbf7e8")
#let blue = rgb("#b9d2da")
#let darkcard = rgb("#203a4f")
#let gridline = rgb("#ded4b7")

#let bg() = [
  #place(top + left, dx: 0cm, dy: 0cm, rect(width: 16cm, height: 9cm, fill: paper))
]

#let slide-no(n) = [
  #place(bottom + center, dy: -0.15cm, text(size: 5pt, fill: muted)[#n])
]

#let header(title) = [
  #place(top + left, dx: 0cm, dy: 0cm, rect(width: 16cm, height: 0.86cm, fill: navy))
  #place(top + left, dx: 0.35cm, dy: 0.12cm, text(size: 19pt, weight: "bold", fill: white)[#title])
]

#let card(background, body) = [
  #block(width: 100%, fill: background, stroke: 0.35pt + gridline, inset: 2pt)[
    #set text(size: 4.8pt, fill: if background == darkcard { white } else { ink })
    #align(center)[#body]
  ]
  #v(1.5pt)
]

#let cell(x, y, width, height, title, body) = [
  #place(top + left, dx: x, dy: y, block(width: width, height: height, fill: cream, stroke: 0.45pt + gridline, inset: 0pt)[
    #block(width: 100%, fill: pale, inset: 2pt)[#align(center)[#text(size: 4.8pt, weight: "bold", fill: navy)[#title]]]
    #line(length: width, stroke: 0.45pt + gridline)
    #block(width: 100%, inset: 2pt)[#body]
  ])
]

#let lean-layout(title, problem, solution, offer, advantage, segments, alternatives, metrics, channels, early, costs, revenue, n) = [
  #bg()
  #header(title)
  #cell(0.25cm, 1.05cm, 2.35cm, 2.35cm, [01 Problem])[#problem]
  #cell(2.60cm, 1.05cm, 2.35cm, 2.35cm, [02 Lösung])[#solution]
  #cell(4.95cm, 1.05cm, 3.00cm, 4.35cm, [04 Einzigartiges Angebot])[#offer]
  #cell(7.95cm, 1.05cm, 2.35cm, 2.10cm, [05 Unfairer Vorteil])[#advantage]
  #cell(10.30cm, 1.05cm, 2.35cm, 2.35cm, [07 Kundensegmente])[#segments]

  #cell(0.25cm, 3.40cm, 2.35cm, 2.00cm, [Bestehende Alternativen])[#alternatives]
  #cell(2.60cm, 3.40cm, 2.35cm, 2.00cm, [03 Wichtige Metriken])[#metrics]
  #cell(7.95cm, 3.15cm, 2.35cm, 2.25cm, [06 Kanäle])[#channels]
  #cell(10.30cm, 3.40cm, 2.35cm, 2.00cm, [Early Adopter])[#early]

  #cell(0.25cm, 5.40cm, 6.20cm, 1.95cm, [08 Kostenstruktur])[#costs]
  #cell(6.45cm, 5.40cm, 6.20cm, 1.95cm, [09 Einnahmequellen])[#revenue]
  #place(bottom + right, dx: -0.32cm, dy: -0.15cm, text(size: 5pt, fill: muted)[#n])
]

#let two-cols(left, right) = [
  #grid(columns: (1fr, 1fr), gutter: 0.12cm)[#left][#right]
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
#place(top + left, dx: 0cm, dy: 0cm, rect(width: 0.24cm, height: 9cm, fill: gold))
#place(top + left, dx: 0.38cm, dy: 0.65cm, rect(width: 1.2cm, height: 7.7cm, fill: navy))
#place(top + left, dx: 1.95cm, dy: 2.75cm, text(size: 28pt, weight: "bold", fill: ink)[DISRUPT])
#place(top + left, dx: 1.95cm, dy: 4.10cm, text(size: 28pt, weight: "bold", fill: ink)[POST AG])
#place(top + left, dx: 1.95cm, dy: 7.65cm, text(size: 5.5pt, fill: muted)[Bienias Kamil, Bulut Aylin, Juricevic Mateja, Kern Amelie, Pataki Dániel, Schreiner Patrick])
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
  [#card(blue)[Tagesrekord 2025: 1,65 Mio. Pakete] #card(blue)[+ 232 Mio. Pakete in 2025 in AT]],
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
  [#card(blue)[Fehlende Kapazitätsreserven in Spitzenzeiten: Paketaufkommen verdoppelt sich zur Weihnachtszeit, das Gesamtsystem erreicht die Kapazitätsgrenze] #card(blue)[Verspätete oder ausbleibende Weihnachtslieferungen beschädigen primär die Marke der Händlerinnen]],
  [#card(blue)[1000 zusätzliche Mitarbeitende in den Wochen vor Weihnachten] #card(blue)[Überstunden/ Schichtausweitung]],
  [#card(darkcard)[Post AG verspricht auch bei Rekordmengen gleichbleibende Zustelltermine dank jahrzehntelanger, erfahrener Logistikinfrastruktur]],
  [#card(blue)[Einzige Zustellorganisation mit ganzjähriger landesweiter Infrastruktur] #card(blue)[Eingespielte Prozesse aus jährlich wiederkehrenden Rekordauslieferungen]],
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

// 4 — Lean Canvas: Retouren
#lean-layout(
  [Lean Startup Canvas],
  [#card(blue)[Händler haben hohe operative Kosten und Komplexität durch Retouren.] #card(blue)[Steigende Retourmengen und hoher Anspruch der Privatkund\*innen bei Retouren.]],
  [#card(blue)[Nationale & Internationale Retouren; sehr detailliertes Postnetz in Österreich] #card(blue)[Business Cockpit, Tracking und Labeling Center]],
  [#card(darkcard)[Die Post AG übernimmt nicht nur den Versand & die Zustellung, sondern übernimmt auch volle Verantwortung über Retouren.]],
  [#card(blue)[österreichweites Post-netzwerk] #card(blue)[Vertrauen von österreichischen Kund\*innen]],
  [#card(blue)[e-commerce] #card(blue)[online-händler] #card(blue)[Kund\*innen mit besonders hoher Retourenrate]],
  [#card(blue)[andere Versandservices wie zB. GLS & DPD] #card(blue)[auch Eigenzustellung bei großen Kunden (zB. Amazon)]],
  [#card(blue)[Retourenquote (54% in 2026)] #card(blue)[Kosten pro Retoure]],
  [#card(darkcard)[E-commerce-Plattform & Paket-Vertriebsmitarbeiter:innen]],
  [#card(blue)[Paketversand & Retouren] #card(blue)[Retourenmanagement und Logistik]],
  [#card(blue)[Fahrzeuge und Energie; IT & Tracking-Systeme; Paketstationen / SB-Zonen; Lager- und Fulfillment-Infrastruktur; Retourenlogistik; internationale Logistik] #card(blue)[Zusteller:innen und Personal]],
  [#card(blue)[Paketversand & Retouren] #card(blue)[Retourenmanagement und Logistik]],
  4,
)
#pagebreak()

// 5 — Lean Canvas: Flexible Empfangsoptionen
#lean-layout(
  [Lean Startup Canvas],
  [#card(blue)[Empfänger sind zum Zustellzeitpunkt häufig nicht zuhause - eine persönliche Paketübergabe ist nicht möglich.] #card(blue)[Fehlgeschlagene Übergaben verursachen zusätzliche Wege, Wartezeit und Aufwand für Empfänger:innen und Post.]],
  [#card(blue)[Flexible Empfangsoptionen über Post App, Post Account: Wunsch-Platz, Wunsch-Nachbar, Poststation oder Post-Standort.] #card(blue)[Paket sicher und möglichst ohne zusätzlichen Aufwand erhalten]],
  [#card(darkcard)[“Pakete flexibel empfangen”] #card(blue)[Kombination aus Hauszustellung, Wunsch-Platz, Wunsch-Nachbar, Empfangsbox, Poststation, Filialnetz]],
  [#card(blue)[Bereits vorhandenes flächendeckendes Zustell- und Abholnetz in ganz Österreich.] #card(blue)[Was haben wir, das andere nicht replizieren oder erwerben können?]],
  [#card(blue)[Private Paketempfänger, Online-Shopper] #card(blue)[Onlinehändler]],
  [#card(blue)[DPD, GLS, Amazon Logistics sowie weitere Paketdienste mit Paketshops/-stationen.] #card(blue)[NachbarInnen, Abstellgenehmigung/Wunsch-Platz, Poststation, Postfiliale/Postpartner, Empfangsbox oder Paketumleitung.]],
  [#card(blue)[1.596 Poststationen mit 188.349 Fächern und 84.546 Empfangsboxen, \<35 Mio. Sendungen abgewickelt] #card(blue)[Anteil erfolgreicher Zustellungen ohne zusätzlichen Zustellversuch, Nutzung alternativer Empfangsoptionen, Kundenzufriedenheit]],
  [#card(darkcard)[Post App, Website, Tracking & digitale Benachrichtigungen]],
  [#card(blue)[Privathaushalte, Berufstätige, urbane Haushalte] #card(blue)[EmpfängerInnen: weniger Abholwege und höhere Flexibilität. Onlinehändler: besseres Zustellerlebnis. Post: effizientere letzte Meile]],
  [#card(blue)[Sortier- und Logistikinfrastruktur, Paketstationen, Empfangsboxen, Filialnetz, Fahrzeuge] #card(blue)[Zustellpersonal, Energie, zusätzliche Zustellvorgänge, Lagerung Pakete, Betrieb der Box-Infrastruktur]],
  [#card(blue)[Paketentgelte der Onlinehändler, Paketversand durch Privatkunden]],
  5,
)
#pagebreak()

// 6 — Lean Canvas: Arbeitsfragen
#work-question-canvas(6)
#pagebreak()

// 7 — Lean Canvas: Arbeitsfragen duplicate slide preserved from PPTX
#work-question-canvas(7)
#pagebreak()

// 8 — Prozess
#bg()
#place(top + left, dx: 0cm, dy: 0cm, rect(width: 6.9cm, height: 9cm, fill: navy))
#place(top + left, dx: 6.9cm, dy: 0cm, rect(width: 9.1cm, height: 9cm, fill: paper))
#place(top + left, dx: 7.35cm, dy: 1.05cm, text(size: 20pt, weight: "bold", fill: ink)[PROZESS])
#place(top + left, dx: 7.35cm, dy: 2.60cm, line(length: 3.6cm, stroke: 1pt + gold))
#place(top + left, dx: 0.65cm, dy: 0.75cm, block(width: 2.65cm, height: 3.25cm, inset: 4pt)[#set text(fill: white, size: 6pt) 
#align(center)[#text(size: 8pt, weight: "bold", fill: gold)[01] #v(0.35cm) Umsatzstärken des Unternehmens: #v(0.25cm) Paket & Logistik #linebreak() 1.720 Mio. EUR #linebreak() sowie #linebreak() Brief & Werbepost #linebreak() 1.155 Mio. EUR]])
#place(top + left, dx: 3.55cm, dy: 0.75cm, block(width: 2.85cm, height: 3.25cm, inset: 4pt)[#set text(fill: white, size: 6pt) 
#align(center)[#text(size: 8pt, weight: "bold", fill: gold)[02] #v(0.35cm) Vision und Kundensegmente: #v(0.25cm) Führende E-Commerce-Partner in AT, und mehr als 150 Mio. Kundinnen insgesamt #v(0.18cm) Dienstleistungen des Alltags: #linebreak() Post und Bank für Privatpersonen]])
#place(top + left, dx: 0.65cm, dy: 4.50cm, block(width: 2.65cm, height: 3.30cm, inset: 4pt)[#set text(fill: white, size: 6pt) 
#align(center)[#text(size: 8pt, weight: "bold", fill: gold)[03] #v(0.35cm) Kundenprobleme feststellen und vertiefen: #v(0.25cm) Eigene Erfahrungen mit Zustellern verglichen und Presseaussendungen durchgegangen]])
#place(top + left, dx: 3.55cm, dy: 4.50cm, block(width: 2.85cm, height: 3.30cm, inset: 4pt)[#set text(fill: white, size: 6pt) 
#align(center)[#text(size: 8pt, weight: "bold", fill: gold)[04] #v(0.35cm) Lösungsfindung: #v(0.25cm) Bestehende Lösungen beim Unternehmen sowie Alternativen laut Nachrichtenaussendungen recherchiert und passend zum Problem gesucht]])
#place(top + left, dx: 7.35cm, dy: 3.20cm, block(width: 6.9cm, height: 3.9cm, inset: 4pt)[#set text(size: 7pt) 
text(weight: "bold")[Quellen:] #v(0.25cm) - Geschäftsbericht/Report Post AG #v(0.2cm) - Presseaussendungen: Post, ORF, APA #v(0.2cm) - Eigene Erfahrungen mit Zustellern #v(0.2cm) - KI-gestützte Websuche])
#slide-no(8)
#pagebreak()

// 9 — Recherche
#bg()
#place(top + left, dx: 0.70cm, dy: 0.70cm, line(length: 1.8cm, stroke: 1pt + gold))
#place(top + left, dx: 0.70cm, dy: 1.10cm, text(size: 13.5pt, weight: "bold", fill: ink)[RECHERCHE - WAS WAR HILFREICH WAS NICHT?])
#place(top + left, dx: 2.05cm, dy: 2.20cm, text(size: 26pt, fill: navy)[+])
#place(top + left, dx: 9.75cm, dy: 2.20cm, text(size: 26pt, fill: gold)[-])
#place(top + left, dx: 0.90cm, dy: 3.35cm, block(width: 6.25cm, height: 3.15cm, fill: cream, stroke: 0.45pt + gridline, inset: 6pt)[#align(center)[#text(size: 7pt, weight: "bold", fill: navy)[HILFREICH:]] #v(0.35cm) #set text(size: 6pt)
- Primärquellen: Geschäftsberichte und Unternehmensbeschreibung #linebreak() - Aktuelle Fachpressemeldungen (aus dem Jahr 2025) #linebreak() - KI-gestützte Websuche und Zusammenfassung von Artikeln])
#place(top + left, dx: 8.85cm, dy: 3.35cm, block(width: 6.25cm, height: 3.15cm, fill: cream, stroke: 0.45pt + gridline, inset: 6pt)[#align(center)[#text(size: 7pt, weight: "bold", fill: navy)[NICHT HILFREICH:]] #v(0.35cm) #set text(size: 6pt)
- xxx #linebreak() - xxx])
#slide-no(9)
#pagebreak()

// 10 — Closing
#bg()
#place(top + left, dx: 0cm, dy: 0cm, rect(width: 0.24cm, height: 9cm, fill: gold))
#place(top + left, dx: 0.38cm, dy: 0.65cm, rect(width: 1.2cm, height: 7.7cm, fill: navy))
#place(top + left, dx: 7.15cm, dy: 3.65cm, text(size: 28pt, weight: "bold", fill: ink)[DANKE])
#place(top + right, dx: -1.35cm, dy: 6.95cm, line(length: 2.65cm, stroke: 1pt + gold))
#slide-no(10)
