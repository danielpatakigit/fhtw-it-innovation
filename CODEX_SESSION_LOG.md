# Codex Session Record — FH Technikum Wien / Post AG

> Capture of the Codex (OpenAI) working session so the work is recoverable and
> continuable from this harness. Source: local Codex rollout log
> `~/.codex/sessions/2026/09/16/rollout-2026-09-16T14-36-38-*.jsonl`
> (project "fhtw it innovation", 2026-09-16, 12:36–13:20 UTC).

## Project / course context

- Course: IT Innovations- und Technologiemanagement, FH Technikum Wien
- Group/company: Österreichische Post AG
- Assignment: Challenge Assignment #1
- Phase: `VERSTEHEN` (problem space) of Design Thinking — understand the
  customer problems Post AG already solves, for which segments, and the current
  solutions. Do not jump to solution ideas yet.
- Team: Bienias Kamil, Bulut Aylin, Juricevic Mateja, Kern Amelie,
  Pataki Dániel, Schreiner Patrick

## The stack (set up in this session)

- **Git + GitHub** as the source of truth: repo `danielpatakigit/fhtw-it-innovation`,
  branch `main`, HTTPS auth via `gh` (macOS Keychain helper).
- **Typst** (`typst 0.15.1`) + **typstyle** (`typstyle 0.15.1`) for the slide
  deck. Single source file: `post-ag-single.typ`.
- **typst-author** skill installed for AI editing guidance.
- **IBM Plex Sans** vendored in `assets/fonts/` so local builds and Typst.app
  use the same typeface (Arial does not resolve inside Typst.app).
- **Typst.app** project as the collaborative up-to-date frontend; GitHub repo as
  the backing / AI-working surface.
- `AGENTS.md` at repo root documents the conventions (problem-first, single-file,
  evidence-led slides, ≥5 sources per problem slide, validation commands).

## What happened this session (chronology)

1. Located the actual repo `fhtw-it-innovation` at
   `/Users/dp/GitHub Repositories/fhtw-it-innovation` (session cwd was a temp
   handoff folder). Confirmed it is a small Git repo with one Typst file.
2. Git push access: `gh` was not installed and no SSH key existed. User ran
   `brew install gh` + `gh auth login` in their Terminal; after one auth
   retry, fetch and dry-run push succeeded for `danielpatakigit`.
3. Installed Typst + typstyle + typst-author skill; created `AGENTS.md`.
4. Semantic refactor of `post-ag-single.typ` only (no content change):
   used the Canvas title param, named helpers clearly, removed an unused
   helper, made slide numbers real args, deduplicated the working-question
   Canvas for slides 6/7. Compiles to 10 pages.
5. Committed + pushed as `e4e1d56 Set up Typst workflow guidance`.
6. User pushed `4e51bbb test commit from typst.app` from Typst.app (touched
   AGENTS.md); pulled locally (fast-forward).
7. Font work: vendored `IBMPlexSans-Regular.ttf` + `IBMPlexSans-Bold.ttf` into
   `assets/fonts/`, switched document to IBM Plex Sans, set up a fully-local
   edit → render → view loop (no commit/push per change).
8. Visual redesign pass: new palette (cool white / deep ink / teal / coral
   replacing beige-navy), larger Canvas, tighter dense cards, rebuilt title /
   process / research / closing slides. Slide 7 (working questions) had
   stopped rendering — converted to a dedicated two-column "Arbeitsfragen"
   slide.
9. Canvas color key: five functional roles (coral = problem/alternatives,
   blue = solution/channels, amber = value/advantage, plum = customers, slate =
   metrics/costs/revenue); slightly larger type. Green removed from Canvas.
10. Restored a hidden PPTX slide (`/Users/dp/Downloads/Post AG (1).pptx`,
    text "Überstunden + Wochenenddienste") as new slide 4 after the detailed
    peak-season Canvas; deck grew to 11 slides.
11. Final Canvas polish: cards unified to one light-gray box treatment,
    tightened padding/insets, fixed text overflow in the densest cells
    (flexible-receipt channels, early-adopter cards).

## Current repo state (at handover)

- `post-ag-single.typ` — 11 slides, compiles cleanly
  (`typst compile --font-path assets/fonts post-ag-single.typ`).
- `assets/fonts/` — IBM Plex Sans Regular + Bold (vendored).
- `AGENTS.md` — conventions file.
- Local working tree has uncommitted changes to `post-ag-single.typ` and
  `AGENTS.md`, plus untracked `assets/` (the redesign + restored slide were
  never committed/pushed because Codex usage ran out).
- `typstyle --check` still reports legacy formatting differences on the
  untouched source; left un-reformatted on purpose (would rewrite too much).

## Open items / next steps

- [ ] Commit + push the redesign / restored slide / font files.
- [ ] Condense the densest Lean Canvas cells for a 30-person room.
- [ ] Add source notes: ≥5 sources per problem slide (AGENTS.md requires it).
- [ ] Improve slides 9/10 (Prozess / Recherche) — the "Recherche" slide still
  has placeholder `xxx` entries in the "LÜCKEN IM MATERIAL" panel; keep the
  research-process slide honest about sources and AI-tool use.
- [ ] Next design-thinking step: prioritize the problems and investigate
  further (closing-slide call to action).
