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

#let canvas-card(body, fill: blue) = [
  #block(width: 100%, fill: fill, stroke: none, inset: (x: 3pt, y: 2.2pt))[
    #align(center)[#body]
  ]
  #v(0.35pt)
]

#let fit-block(body, size, inner-width) = [
  #set text(size: size)
  #block(width: inner-width, inset: (x: 2.5pt, y: 0pt))[#body]
]

#let render-body(body, size) = [
  #set text(size: size, fill: ink)
  #block(width: 100%, inset: 2.5pt)[#body]
]

// Picks the largest text size whose measured body fits, then renders it.
#let cell-body(body, inner-width, maxh) = context {
  let chosen = 3.0pt
  for s in (5.0pt, 4.7pt, 4.4pt, 4.1pt, 3.8pt, 3.5pt, 3.2pt, 3.0pt) {
    if measure(fit-block(body, s, inner-width)).height <= maxh {
      chosen = s
      break
    }
  }
  render-body(body, chosen)
}

#let cell(x, y, width, height, title, accent, tint, body) = [
  #place(top + left, dx: x, dy: y, block(width: width, height: height, fill: cream, stroke: 0.4pt + gridline, inset: 0pt)[
    #block(width: 100%, fill: tint, inset: (x: 4pt, y: 2pt))[#align(center)[#text(size: 5pt, weight: "bold", fill: accent)[#title]]]
    #line(length: width, stroke: 0.4pt + gridline)
    #v(1fr)
    #cell-body(body, width - 0.40cm, height - 0.60cm)
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
  #text(size: 5.3pt, weight: "bold", fill: solution-accent)[Einlieferung]
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
  #text(size: 5.2pt, weight: "bold", fill: solution-accent)[SECHSTER CANVAS]
  #h(0.18cm)
  #text(size: 5.2pt, fill: ink)[Privatpersonen × Versand/Einlieferung — siehe Folie 3.]
])
#slide-no(2)
#pagebreak()














// 3 — Lean Canvas: Privat Versand / Einlieferung
#lean-layout(
  [Privat · Versand: Einlieferung],
  [#canvas-card[Frankieren und Aufgeben dauert zu lange; Öffnungszeiten passen nicht] #canvas-card[Zustelldatum und Kosten sind vorher unklar]],
  [#canvas-card[Online frankieren, zuhause drucken, in Filiale/Post-Partner aufgeben] #canvas-card[Paketmarke am Automaten oder in der App]],
  [#canvas-card(fill: darkcard)[Versenden in wenigen Minuten – ohne Papierkram, mit klarem Zustelldatum]],
  [#canvas-card[Dichtes Filial- und Automatennetz österreichweit] #canvas-card[Zustellung am nächsten Werktag]],
  [#canvas-card[Privatpersonen, die Pakete an Familie oder Behörden senden]],
  [#canvas-card[Konkurrenz-Paketdienste mit eigenen Shops] #canvas-card[Privatverkauf über Kleinanzeigen mit Selbstzustellung]],
  [#canvas-card[Anteil Online-Frankierung; Zustellquote nächster Werktag] #canvas-card[Kundenaufwand in Minuten]],
  [#canvas-card[Filiale, Post-Partner, Paketautomaten, Online-Portale]],
  [#canvas-card[Wochenend-Sender:innen ohne Zugang zur Filiale]],
  [#two-cols([#canvas-card[Filialnetzbetrieb]], [#canvas-card[IT für Online-Frankierung]]) #canvas-card[Zustelllogistik]],
  [#canvas-card[Paket- und Briefentgelte von Privatkund:innen]],
  3,
)
#pagebreak()

// 4 — Lean Canvas: Privat Transport / Sendungsverfolgung
#lean-layout(
  [Privat · Transport: Sendungsverfolgung],
  [#canvas-card[Unklare Informationen zum aktuellen Standort des Pakets.]],
  [#canvas-card[Aktuelle Status- und Standortinformationen zum Paket] #canvas-card[Genauere Sendungsverfolgung über Post App und Website]],
  [#canvas-card(fill: darkcard)[Jederzeit wissen, wo sich mein Paket befindet]],
  [#canvas-card[Direkter Zugriff auf eigene Transportdaten.] #canvas-card[Bestehendes österreichweites Logistik- und Zustellnetz]],
  [#canvas-card[Private Paketempfänger und Online-Shopper]],
  [#canvas-card[Nachfrage beim Kundenservice.] #canvas-card[Klassische Sendungsverfolgung mit einzelnen Statusmeldungen]],
  [#canvas-card[Weniger Nachfragen zum Paketstatus.] #canvas-card[Nutzung der Sendungsverfolgung]],
  [#canvas-card(fill: darkcard)[Post App, Website, Push-Benachrichtigungen und E-Mail.]],
  [#canvas-card[Personen, die häufig online bestellen und mehrere Pakete erwarten]],
  [#canvas-card[IT-Infrastruktur und Datenverarbeitung.] #canvas-card[Weiterentwicklung der Tracking-Systeme und Post App]],
  [#canvas-card[Höhere Nutzung der Paketdienstleistungen] #canvas-card[Premium-/Express-Zusatzleistungen]],
  4,
)
#pagebreak()

// 5 — Lean Canvas: Privat Empfang / Flexible Übergabe
#lean-layout(
  [Privat · Empfang: Flexible Übergabe],
  [#canvas-card[Empfänger sind zum Zustellzeitpunkt häufig nicht zuhause - eine persönliche Paketübergabe ist nicht möglich.] #canvas-card[Fehlgeschlagene Übergaben verursachen zusätzliche Wege, Wartezeit und Aufwand für Empfänger:innen und Post.]],
  [#canvas-card[Flexible Empfangsoptionen über Post App, Post Account: Wunsch-Platz, Wunsch-Nachbar, Poststation oder Post-Standort.] #canvas-card[Paket sicher und möglichst ohne zusätzlichen Aufwand erhalten]],
  [#canvas-card(fill: darkcard)[“Pakete flexibel empfangen”] #canvas-card[Kombination aus Hauszustellung, Wunsch-Platz, Wunsch-Nachbar, Empfangsbox, Poststation, Filialnetz]],
  [#canvas-card[Bereits vorhandenes flächendeckendes Zustell- und Abholnetz in ganz Österreich.] #canvas-card[Was haben wir, das andere nicht replizieren oder erwerben können?]],
  [#canvas-card[Private Paketempfänger, Online-Shopper] #canvas-card[Onlinehändler]],
  [#canvas-card[DPD, GLS, Amazon Logistics sowie weitere Paketdienste mit Paketshops/-stationen.] #canvas-card[NachbarInnen, Abstellgenehmigung/Wunsch-Platz, Poststation, Postfiliale/Postpartner, Empfangsbox oder Paketumleitung.]],
  [#canvas-card[1.596 Poststationen, 188.349 Fächer, 84.546 Empfangsboxen] #canvas-card[Erfolgreiche Zustellquote, Nutzung alternativer Optionen, Zufriedenheit]],
  [#canvas-card(fill: darkcard)[Post App, Website, Tracking & digitale Benachrichtigungen]],
  [#canvas-card[Privathaushalte, Berufstätige, urbane Haushalte] #canvas-card[Alle profitieren: weniger Wege, besseres Erlebnis, effizientere letzte Meile]],
  [#canvas-card[Sortier- und Logistikinfrastruktur, Paketstationen, Empfangsboxen, Filialnetz, Fahrzeuge] #canvas-card[Zustellpersonal, Energie, zusätzliche Zustellvorgänge, Lagerung Pakete, Betrieb der Box-Infrastruktur]],
  [#canvas-card[Paketentgelte der Händler, Paketversand von Privatkund:innen]],
  5,
)
#pagebreak()

// 6 — Lean Canvas: E-Commerce Versand / Fulfillment
#lean-layout(
  [E-Commerce · Versand: Fulfillment],
  [#canvas-card[kein skalierbares Lager für Wachstum] #canvas-card[Wettbewerbsdruck durch Lieferstandards, die kleine Händler sonst nicht halten können]],
  [#canvas-card[einfache Anbindung (shopify etc)] #canvas-card[Fullfillment Komplettlösung]],
  [#canvas-card(fill: darkcard)[Sicherer Standard bei schwankender Bestellmengen (saisonale Peaks)]],
  [#canvas-card[Post-Zustellinfrastruktur] #canvas-card[EuShipments.com: Marktführer (70%), von der Post übernommen]],
  [#canvas-card[Online-Händler] #canvas-card[Shops ohne eigenes Lager / Startups im ecommerce]],
  [#canvas-card[eigenes Lager] #canvas-card[andere Fullfillmentanbieter / amazon fba]],
  [#canvas-card[Versandstandards, Versandkosten] #canvas-card[Same Day-Quoten]],
  [#canvas-card[Plugin Integration (Shopify etc)] #canvas-card(fill: darkcard)[“ecommerce plus” als Angebot der Post ag]],
  [#canvas-card[Nischenhändler mit saisonalen Stoßzeiten (zB Weihnachtsgeschäft)] #canvas-card[neue Shops in der Wachstumsphase]],
  [#canvas-card[Fahrzeuge, IT, Lager- und Fulfillment-Infrastruktur, Retourenlogistik] #canvas-card[Zustellpersonal]],
  [#canvas-card[Fulfillment- und Versandgebühren] #canvas-card[Zusatzleistungen wie branding, express]],
  6,
)
#pagebreak()

// 7 — Lean Canvas: E-Commerce transport / Spitzenzeiten
#lean-layout(
  [E-Commerce · Transport: Spitzenzeiten],
  [#canvas-card(fill: darkcard)[Fehlende Kapazitätsreserven] #canvas-card(fill: darkcard)[Rufschädigung von Händlerinnen]],
  [#canvas-card[Zusätzliche Mitarbeitende] #canvas-card[Überstunden + Wochenenddienste]],
  [#canvas-card(fill: darkcard)[Auch bei Rekordmengen gleichbleibende Zustelltermine]],
  [#canvas-card[Ganzjährige landesweite Infrastruktur] #canvas-card[Eingespielte Prozesse]],
  [#canvas-card(fill: darkcard)[Große Onlinehändler] #canvas-card[KMU ohne eigene Kapazitätsplanung]],
  [#canvas-card[Wettbewerber beauftragen] #canvas-card[Frühere Versandtermine]],
  [#canvas-card[Tagesrekord 2025: 1,65 Mio. Pakete] #canvas-card[\+ 232 Mio. Pakete in 2025 in AT]],
  [#canvas-card[Frühe Kapazitätsplanung] #canvas-card[Kommunikation von Versandfristen]],
  [#canvas-card(fill: darkcard)[Umsatzkonzentrierte Saison-Händler]],
  [#two-cols([#canvas-card[Saisonales Zusatzpersonal]], [#canvas-card[Ausgeweitetes Monitoring]]) #canvas-card[Überstunden/ Schichtausweitung]],
  [#two-cols([#canvas-card[Peak-Saison (Mengenwachstum)]], [#canvas-card[Premium-/Express-Zuschläge]])],
  7,
)
#pagebreak()

// 8 — Lean Canvas: E-Commerce Empfang / Retouren
#lean-layout(
  [E-Commerce · Empfang: Retouren],
  [#canvas-card[Retouren kosten Händler Zeit und Geld] #canvas-card[Kund\*innen erwarten einfache Rücksendung]],
  [#canvas-card[Nationale & Internationale Retouren; sehr detailliertes Postnetz in Österreich] #canvas-card[Business Cockpit, Tracking und Labeling Center]],
  [#canvas-card(fill: darkcard)[Die Post AG übernimmt nicht nur den Versand & die Zustellung, sondern übernimmt auch volle Verantwortung über Retouren.]],
  [#canvas-card[österreichweites Post-netzwerk] #canvas-card[Vertrauen von österreichischen Kund\*innen]],
  [#canvas-card[E-Commerce] #canvas-card[Online-Händler]],
  [#canvas-card[andere Versandservices wie zB. GLS & DPD] #canvas-card[auch Eigenzustellung bei großen Kunden (zB. Amazon)]],
  [#canvas-card[Retourenquote (54% in 2026)] #canvas-card[Kosten pro Retoure]],
  [#canvas-card[E-commerce-Plattform & Paket-Vertriebsmitarbeiter:innen] #canvas-card[Bestehendes österreichweites Post-netzwerk]],
  [#canvas-card[Kund\*innen mit besonders hoher Retourenrate]],
  [#canvas-card[Fahrzeuge, IT, Lager- und Fulfillment-Infrastruktur, Retourenlogistik] #canvas-card[Zustellpersonal]],
  [#canvas-card[Paketversand & Retouren] #canvas-card[Retourenmanagement]],
  8,
)
#pagebreak()

// 9 — Prozess
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
#slide-no(9)
#pagebreak()

// 10 — Recherche
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