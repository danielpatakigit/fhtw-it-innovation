// Post AG — text-only presentation port from Canva/PPTX
// Single-file Typst source. Project fonts live in assets/fonts.
// Content mirrored from all_content_from_canva.pdf (export 2026-09-17).

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
    #set text(size: 4.8pt, fill: ink)
    #align(center)[#body]
  ]
  #v(0.4pt)
]

// Reserve this denser treatment for the few long Canvas entries.
#let compact-card(body) = [
  #block(width: 100%, fill: blue, stroke: none, inset: (x: 2.6pt, y: 1.8pt))[
    #set text(size: 4.2pt, fill: ink)
    #align(center)[#body]
  ]
  #v(0.25pt)
]
// Use only where two long factual cards must share a narrow Canvas cell.
#let dense-card(body) = [
  #block(width: 100%, fill: blue, stroke: none, inset: (x: 2.4pt, y: 1.4pt))[
    #set text(size: 3.8pt, fill: ink)
    #align(center)[#body]
  ]
  #v(0.15pt)
]

#let cell(x, y, width, height, title, accent, tint, body) = [
  #place(top + left, dx: x, dy: y, block(width: width, height: height, fill: cream, stroke: 0.4pt + gridline, inset: 0pt)[
    #block(width: 100%, fill: tint, inset: (x: 4pt, y: 2pt))[#align(center)[#text(size: 5pt, weight: "bold", fill: accent)[#title]]]
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

// 2 — Problemraum: Kundengruppe × Service Journey
#bg()
#place(top + left, dx: 0.70cm, dy: 0.62cm, text(size: 4.8pt, weight: "bold", fill: darkcard)[PROBLEMRAUM])
#place(top + left, dx: 0.70cm, dy: 1.05cm, text(size: 17pt, weight: "bold", fill: ink)[Zwei Gruppen. Drei Phasen.])
#place(top + left, dx: 0.70cm, dy: 1.93cm, text(size: 7pt, fill: muted)[Jeder Lean Canvas vertieft eine konkrete Aufgabe entlang der Post-AG-Service-Journey.])
#place(top + left, dx: 1.30cm, dy: 2.40cm, text(size: 4.8pt, weight: "bold", fill: muted)[KUNDENGRUPPE ↓])
#place(top + left, dx: 4.05cm, dy: 2.40cm, text(size: 4.8pt, weight: "bold", fill: muted)[SERVICE JOURNEY →])
#place(top + left, dx: 1.30cm, dy: 2.75cm, table(
  columns: (2.45cm, 3.75cm, 3.75cm, 3.75cm),
  rows: (0.60cm, 1.50cm, 1.50cm),
  gutter: 0.08cm,
  align: center + horizon,
  fill: (x, y) => (
    darkcard, darkcard, darkcard, darkcard,
    customer-tint, solution-tint, value-tint, problem-tint,
    customer-tint, problem-tint, solution-tint, customer-tint,
  ).at(y * 4 + x),
)[
  #text(size: 5.2pt, weight: "bold", fill: white)[KUNDENGRUPPE]
][
  #text(size: 5.2pt, weight: "bold", fill: white)[VERSAND / EINLIEFERUNG]
][
  #text(size: 5.2pt, weight: "bold", fill: white)[TRANSPORT / INFORMATION]
][
  #text(size: 5.2pt, weight: "bold", fill: white)[EMPFANG]
][
  #text(size: 5.6pt, weight: "bold", fill: ink)[E-COMMERCE]
  #v(0.06cm)
  #text(size: 4.5pt, fill: muted)[Händler, Plattformen]
][
  #text(size: 5.3pt, weight: "bold", fill: solution-accent)[Fulfillment]
  #v(0.06cm)
  #text(size: 4.5pt, fill: ink)[Ware an die Post AG anbinden und skalieren]
][
  #text(size: 5.3pt, weight: "bold", fill: value-accent)[Spitzenzeiten]
  #v(0.06cm)
  #text(size: 4.5pt, fill: ink)[Kapazität und Zustellstandard bei Peaks sichern]
][
  #text(size: 5.3pt, weight: "bold", fill: problem-accent)[Retouren]
  #v(0.06cm)
  #text(size: 4.5pt, fill: ink)[Rücksendungen zuverlässig abwickeln]
][
  #text(size: 5.6pt, weight: "bold", fill: ink)[PRIVATPERSONEN]
  #v(0.06cm)
  #text(size: 4.5pt, fill: muted)[Sender:innen und Empfänger:innen]
][
  #text(size: 5.3pt, weight: "bold", fill: problem-accent)[FEHLT]
  #v(0.06cm)
  #text(size: 4.5pt, fill: ink)[Paket oder Brief einfach aufgeben]
][
  #text(size: 5.3pt, weight: "bold", fill: solution-accent)[Sendungsverfolgung]
  #v(0.06cm)
  #text(size: 4.5pt, fill: ink)[Status und Standort transparent machen]
][
  #text(size: 5.3pt, weight: "bold", fill: customer-accent)[Flexible Übergabe]
  #v(0.06cm)
  #text(size: 4.5pt, fill: ink)[Pakete passend zum Alltag empfangen]
])
#place(top + left, dx: 1.30cm, dy: 7.12cm, block(width: 13.95cm, height: 0.70cm, fill: pale, stroke: 0.4pt + gridline, inset: (x: 8pt, y: 4pt))[
  #text(size: 5.2pt, weight: "bold", fill: problem-accent)[FEHLENDER SECHSTER CANVAS]
  #h(0.18cm)
  #text(size: 5.2pt, fill: ink)[Privatpersonen × Versand/Einlieferung — als Nächstes konkretisieren.]
])
#slide-no(2)
#pagebreak()

// 3 — Lean Canvas: E-Commerce transport / Spitzenzeiten
#lean-layout(
  [E-Commerce · Transport: Spitzenzeiten],
  [#card(darkcard)[Fehlende Kapazitätsreserven] #card(darkcard)[Rufschädigung von Händlerinnen]],
  [#card(blue)[Zusätzliche Mitarbeitende] #card(blue)[Überstunden + Wochenenddienste]],
  [#card(darkcard)[Auch bei Rekordmengen gleichbleibende Zustelltermine]],
  [#card(blue)[Ganzjährige landesweite Infrastruktur] #card(blue)[Eingespielte Prozesse]],
  [#card(darkcard)[Große Onlinehändler] #card(blue)[KMU ohne eigene Kapazitätsplanung]],
  [#card(blue)[Wettbewerber beauftragen] #card(blue)[Frühere Versandtermine]],
  [#card(blue)[Tagesrekord 2025: 1,65 Mio. Pakete] #card(blue)[\+ 232 Mio. Pakete in 2025 in AT]],
  [#card(blue)[Frühe Kapazitätsplanung] #card(blue)[Kommunikation von Versandfristen]],
  [#card(darkcard)[Umsatzkonzentrierte Saison-Händler]],
  [#two-cols([#card(blue)[Saisonales Zusatzpersonal]], [#card(blue)[Ausgeweitetes Monitoring]]) #card(blue)[Überstunden/ Schichtausweitung]],
  [#two-cols([#card(blue)[Peak-Saison (Mengenwachstum)]], [#card(blue)[Premium-/Express-Zuschläge]])],
  3,
)
#pagebreak()

// 4 — Lean Canvas: E-Commerce Empfang / Retouren
#lean-layout(
  [E-Commerce · Empfang: Retouren],
  [#card(blue)[Händler haben hohe operative Kosten und Komplexität durch Retouren.] #compact-card[Steigende Retourmengen und hoher Anspruch der Privatkund\*innen bei Retouren.]],
  [#card(blue)[Nationale & Internationale Retouren; sehr detailliertes Postnetz in Österreich] #card(blue)[Business Cockpit, Tracking und Labeling Center]],
  [#card(darkcard)[Die Post AG übernimmt nicht nur den Versand & die Zustellung, sondern übernimmt auch volle Verantwortung über Retouren.]],
  [#card(blue)[österreichweites Post-netzwerk] #card(blue)[Vertrauen von österreichischen Kund\*innen]],
  [#card(blue)[E-Commerce] #card(blue)[Online-Händler]],
  [#card(blue)[andere Versandservices wie zB. GLS & DPD] #card(blue)[auch Eigenzustellung bei großen Kunden (zB. Amazon)]],
  [#card(blue)[Retourenquote (54% in 2026)] #card(blue)[Kosten pro Retoure]],
  [#compact-card[E-commerce-Plattform & Paket-Vertriebsmitarbeiter:innen] #compact-card[Bestehendes österreichweites Post-netzwerk]],
  [#card(blue)[Kund\*innen mit besonders hoher Retourenrate]],
  [#compact-card[Fahrzeuge und Energie; IT & Tracking-Systeme; Paketstationen / SB-Zonen; Lager- und Fulfillment-Infrastruktur; Retourenlogistik; internationale Logistik] #card(blue)[Zusteller:innen und Personal]],
  [#card(blue)[Paketversand & Retouren] #card(blue)[Retourenmanagement und Logistik]],
  4,
)
#pagebreak()


// 5 — Lean Canvas: E-Commerce Versand / Fulfillment
#lean-layout(
  [E-Commerce · Versand: Fulfillment],
  [#card(blue)[kein skalierbares Lager für Wachstum] #compact-card[Wettbewerbsdruck durch Lieferstandards, die kleine Händler sonst nicht halten können]],
  [#card(blue)[einfache Anbindung (shopify etc)] #card(blue)[Fullfillment Komplettlösung]],
  [#card(darkcard)[Sicherer Standard bei schwankender Bestellmengen (saisonale Peaks)]],
  [#card(blue)[Post-Zustellinfrastruktur] #compact-card[EuShipments.com zB, die von der Post Ag übernommen wurde und 70% des Markts einnimmt]],
  [#card(blue)[online Händler] #compact-card[kleine/mittelständige Shops ohne eigenes Lager / Startups im ecommerce]],
  [#card(blue)[eigenes Lager] #card(blue)[andere Fullfillmentanbieter / amazon fba]],
  [#card(blue)[Versandstandards, Versandkosten] #card(blue)[Same Day-Quoten]],
  [#card(blue)[Plugin Integration (Shopify etc)] #card(darkcard)[“ecommerce plus” als Angebot der Post ag]],
  [#card(blue)[Nischenhändler mit saisonalen Stoßzeiten (zB Weihnachtsgeschäft)] #card(blue)[neue Shops in der Wachstumsphase]],
  [#compact-card[Fahrzeuge und Energie; IT & Tracking-Systeme; Paketstationen / SB-Zonen; Lager- und Fulfillment-Infrastruktur; Retourenlogistik; internationale Logistik] #card(blue)[Zusteller:innen und Personal]],
  [#card(blue)[fullfillment Gebühren, Versandgebühren] #card(blue)[Zusatzleistungen wie branding, express etc]],
  5,
)
#pagebreak()

// 6 — Lean Canvas: Privat Empfang / Flexible Übergabe
#lean-layout(
  [Privat · Empfang: Flexible Übergabe],
  [#compact-card[Empfänger sind zum Zustellzeitpunkt häufig nicht zuhause - eine persönliche Paketübergabe ist nicht möglich.] #compact-card[Fehlgeschlagene Übergaben verursachen zusätzliche Wege, Wartezeit und Aufwand für Empfänger:innen und Post.]],
  [#card(blue)[Flexible Empfangsoptionen über Post App, Post Account: Wunsch-Platz, Wunsch-Nachbar, Poststation oder Post-Standort.] #card(blue)[Paket sicher und möglichst ohne zusätzlichen Aufwand erhalten]],
  [#card(darkcard)[“Pakete flexibel empfangen”] #card(blue)[Kombination aus Hauszustellung, Wunsch-Platz, Wunsch-Nachbar, Empfangsbox, Poststation, Filialnetz]],
  [#compact-card[Bereits vorhandenes flächendeckendes Zustell- und Abholnetz in ganz Österreich.] #compact-card[Was haben wir, das andere nicht replizieren oder erwerben können?]],
  [#card(blue)[Private Paketempfänger, Online-Shopper] #card(blue)[Onlinehändler]],
  [#compact-card[DPD, GLS, Amazon Logistics sowie weitere Paketdienste mit Paketshops/-stationen.] #compact-card[NachbarInnen, Abstellgenehmigung/Wunsch-Platz, Poststation, Postfiliale/Postpartner, Empfangsbox oder Paketumleitung.]],
  [#dense-card[1.596 Poststationen mit 188.349 Fächern und 84.546 Empfangsboxen, \<35 Mio. Sendungen abgewickelt] #dense-card[Anteil erfolgreicher Zustellungen ohne zusätzlichen Zustellversuch, Nutzung alternativer Empfangsoptionen, Kundenzufriedenheit]],
  [#card(darkcard)[Post App, Website, Tracking & digitale Benachrichtigungen]],
  [#card(blue)[Privathaushalte, Berufstätige, urbane Haushalte] #compact-card[EmpfängerInnen: weniger Abholwege und höhere Flexibilität. Onlinehändler: besseres Zustellerlebnis. Post: effizientere letzte Meile]],
  [#card(blue)[Sortier- und Logistikinfrastruktur, Paketstationen, Empfangsboxen, Filialnetz, Fahrzeuge] #card(blue)[Zustellpersonal, Energie, zusätzliche Zustellvorgänge, Lagerung Pakete, Betrieb der Box-Infrastruktur]],
  [#card(blue)[Paketentgelte der Onlinehändler, Paketversand durch Privatkunden]],
  6,
)
#pagebreak()

// 7 — Lean Canvas: Privat Transport / Sendungsverfolgung
#lean-layout(
  [Privat · Transport: Sendungsverfolgung],
  [#card(blue)[Unklare Informationen zum aktuellen Standort des Pakets.]],
  [#card(blue)[Aktuelle Status- und Standortinformationen zum Paket] #card(blue)[Genauere Sendungsverfolgung über Post App und Website]],
  [#card(darkcard)[Jederzeit wissen, wo sich mein Paket befindet]],
  [#card(blue)[Direkter Zugriff auf eigene Transportdaten.] #card(blue)[Bestehendes österreichweites Logistik- und Zustellnetz]],
  [#card(blue)[Private Paketempfänger und Online-Shopper]],
  [#card(blue)[Nachfrage beim Kundenservice.] #card(blue)[Klassische Sendungsverfolgung mit einzelnen Statusmeldungen]],
  [#card(blue)[Weniger Nachfragen zum Paketstatus.] #card(blue)[Nutzung der Sendungsverfolgung]],
  [#card(darkcard)[Post App, Website, Push-Benachrichtigungen und E-Mail.]],
  [#card(blue)[Personen, die häufig online bestellen und mehrere Pakete erwarten]],
  [#card(blue)[IT-Infrastruktur und Datenverarbeitung.] #card(blue)[Weiterentwicklung der Tracking-Systeme und Post App]],
  [#card(blue)[Höhere Nutzung der Paketdienstleistungen] #card(blue)[Premium-/Express-Zusatzleistungen]],
  7,
)
#pagebreak()

// 8 — Prozess
#bg()
#place(top + left, dx: 0cm, dy: 0cm, rect(width: 6.25cm, height: 9cm, fill: navy))
#place(top + left, dx: 0.55cm, dy: 0.62cm, text(size: 4.8pt, weight: "bold", fill: gold)[VORGEHEN])
#place(top + left, dx: 0.55cm, dy: 1.12cm, block(width: 2.35cm, height: 3.05cm)[#process-step([01], [Umsatzstärken des Unternehmens], [Paket & Logistik #linebreak() 1.720 Mio. EUR #linebreak() #v(0.1cm) Brief & Werbepost #linebreak() 1.155 Mio. EUR])])
#place(top + left, dx: 3.25cm, dy: 1.12cm, block(width: 2.35cm, height: 3.05cm)[#process-step([02], [Vision und Kundensegmente], [Führende E-Commerce-Partner in AT, mehr als 150 Mio. Kund\*innen insgesamt #linebreak() #v(0.1cm) Dienstleistungen des Alltags: Post und Bank für Privatpersonen])])
#place(top + left, dx: 0.55cm, dy: 4.78cm, block(width: 2.35cm, height: 3.05cm)[#process-step([03], [Kundenprobleme feststellen und vertiefen], [Eigene Erfahrungen mit Zustellern verglichen und Presseaussendungen durchgegangen])])
#place(top + left, dx: 3.25cm, dy: 4.78cm, block(width: 2.35cm, height: 3.05cm)[#process-step([04], [Lösungsfindung], [Bestehende Lösungen beim Unternehmen sowie Alternativen laut Nachrichtenaussendungen recherchiert und passend zum Problem gesucht])])
#place(top + left, dx: 6.85cm, dy: 0.80cm, text(size: 4.8pt, weight: "bold", fill: darkcard)[RECHERCHEPROZESS])
#place(top + left, dx: 6.85cm, dy: 1.25cm, text(size: 20pt, weight: "bold", fill: ink)[PROZESS])
#place(top + left, dx: 6.85cm, dy: 2.36cm, line(length: 1.9cm, stroke: 1.2pt + gold))
#place(top + left, dx: 6.85cm, dy: 3.10cm, block(width: 7.85cm, height: 3.85cm, fill: cream, stroke: 0.4pt + gridline, inset: 12pt)[
  #text(size: 5pt, weight: "bold", fill: darkcard)[VERWENDETE QUELLEN]
  #v(0.24cm)
  #text(size: 6.5pt, fill: ink)[Geschäftsbericht und Unternehmensreport der Post AG #v(0.22cm) Presseaussendungen von Post, ORF und APA #v(0.22cm) Eigene Erfahrungen mit Zustellern #v(0.22cm) KI-gestützte Websuche]
])
#slide-no(8)
#pagebreak()

// 9 — Recherche
#bg()
#place(top + left, dx: 0.70cm, dy: 0.62cm, text(size: 4.8pt, weight: "bold", fill: darkcard)[REFLEXION])
#place(top + left, dx: 0.70cm, dy: 1.05cm, text(size: 17pt, weight: "bold", fill: ink)[RECHERCHE])
#place(top + left, dx: 0.70cm, dy: 2.05cm, text(size: 7pt, fill: muted)[Was war hilfreich – was nicht?])
#place(top + left, dx: 0.70cm, dy: 3.05cm, text(size: 7pt, weight: "bold", fill: darkcard)[HILFREICH])
#place(top + left, dx: 8.25cm, dy: 3.05cm, text(size: 7pt, weight: "bold", fill: gold)[NICHT HILFREICH])
#place(top + left, dx: 0.70cm, dy: 3.55cm, block(width: 6.95cm, height: 3.25cm)[#research-panel([PRIMÄRQUELLEN UND TOOLS], darkcard, [
- Geschäftsberichte und Unternehmensbeschreibung #v(0.16cm)
- Aktuelle Fachpressemeldungen aus 2025 #v(0.16cm)
- KI-gestützte Websuche und Artikel-Zusammenfassungen
])])
#place(top + left, dx: 8.25cm, dy: 3.55cm, block(width: 6.95cm, height: 3.25cm)[#research-panel([WENIG NÜTZLICH], gold, [
- Allgemeine Artikel ohne konkreten Bezug zur Post #v(0.16cm)
- Werbe- und Marketingtexte mit wenig verwertbaren Fakten #v(0.16cm)
- KI-Antworten ohne nachvollziehbare Quellenangabe
])])
#slide-no(9)
#pagebreak()

// 10 — Closing
#bg()
#place(top + left, dx: 0cm, dy: 0cm, rect(width: 16cm, height: 9cm, fill: navy))
#place(top + left, dx: 1.00cm, dy: 1.00cm, text(size: 4.8pt, weight: "bold", fill: gold)[ÖSTERREICHISCHE POST AG / CHALLENGE ASSIGNMENT 01])
#place(top + left, dx: 1.00cm, dy: 3.25cm, text(size: 31pt, weight: "bold", fill: white)[DANKE])
#place(top + left, dx: 1.00cm, dy: 5.18cm, line(length: 2.15cm, stroke: 1.2pt + gold))
#place(top + left, dx: 1.00cm, dy: 6.05cm, text(size: 7pt, fill: rgb("#D8E6EA"))[Nächster Schritt: Probleme priorisieren und weiter untersuchen.])
#slide-no(10)