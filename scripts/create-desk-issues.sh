#!/usr/bin/env bash
# Run from repo root after: gh auth login
set -euo pipefail
REPO="percy3k6/mega-dev-s01e03"

gh issue create --repo "$REPO" \
  --title "parser · day-first locales, shared parser reads month-first (#4471)" \
  --body "$(cat <<'EOF'
Split from desk ticket **#4471** (412 reports merged as one).

**Cause:** `parser`  
**Reports in this cause:** **379**

Day-first tenants (locale writes day before month). The shared date parser still reads month first, so invites land on the wrong day. Matches intake tag `parser` for most rows; see `src/lib/kb/causes.ts`.

**Kb:** https://github.com/percy3k6/mega-dev-s01e03/blob/main/src/routes/kb/incidents/4471-split/+page.svx

**Parent merge:** #4471 · dates parse mm/dd in eu locales
EOF
)"

gh issue create --repo "$REPO" \
  --title "hint · booking-v3 shows MM/DD on day-first tenants (#4471)" \
  --body "$(cat <<'EOF'
Split from desk ticket **#4471** (412 reports merged as one).

**Cause:** `hint`  
**Reports in this cause:** **33**

Day-first tenants using **booking-v3** (`MM/DD/YYYY` under the field). People type month-first as the hint says; the tenant-side parser reads it the tenant's way — different from the shared `parser` bug.

**Kb:** https://github.com/percy3k6/mega-dev-s01e03/blob/main/src/routes/kb/incidents/4471-split/+page.svx

**Parent merge:** #4471 · dates parse mm/dd in eu locales
EOF
)"

echo "Done. Update issue numbers in the split page if GitHub assigned something other than #1 and #2."
