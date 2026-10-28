# mega-dev-s01e03 · what it shows

Public deliverable for MEGA.dev **S01E03**: split desk ticket **#4471** into real problems.

- **Knowledge base** (from course export): `src/routes/kb/` — see [support-kb/README.md](README.md) in tree (kb README at repo root is this file; kb conventions in `src` layout below).
- **Split write-up (signed):** [kb/incidents/4471-split](src/routes/kb/incidents/4471-split/+page.svx) — frontmatter `signature` + `<RenderStamp />`.
- **Desk tickets:** GitHub Issues in this repo (one per cause, report counts in the body).

## Causes filed from #4471

| Cause | Reports | Issue |
| --- | ---: | --- |
| `parser` | 379 | #1 |
| `hint` | 33 | #2 |

Counts come from `reports-4471.json` + `src/lib/kb/causes.ts` (same logic as `<CauseTable ticket={4471} />`).
