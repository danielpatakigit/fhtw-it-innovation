# FH Technikum Wien - IT Innovation

This repository contains the Challenge Assignment #1 presentation for
Oesterreichische Post AG. Work in the `VERSTEHEN` (problem-space) phase of
Design Thinking: understand existing customer problems, customer segments, and
current Post AG solutions before proposing new ideas.

- Keep the presentation simple: use the existing single Typst file
  (`post-ag-single.typ`). Do not add a presentation framework unless needed.
- Use the project-bundled IBM Plex Sans font files in `assets/fonts` so local
  builds and Typst.app use the same typeface.
- Keep each problem slide evidence-led: customer problem, relevant segment,
  current Post AG solution/business, and priority for further investigation.
- Maintain at least five sources per problem slide in lecture/source notes.
- Keep research-process slides honest about sources and AI tools used, including
  what was useful and what was not.
- Before handing off Typst changes, run:
  `typstyle --check post-ag-single.typ` and
  `typst compile --font-path assets/fonts post-ag-single.typ`.
