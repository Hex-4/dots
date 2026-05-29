# Verification run against 15-school stress test

## Context
User ran a 15-school batch scrape of schoolyank; initial triage in `/home/hexatron/code/schoolyank/test-findings.md` flagged 10/15 schools as broken or partial. User wants a detailed per-problem report on the high-value broken cases so a future session can fix them. User has already provisioned a browser-use API key at `~/.claude/.env` and enabled the `browser-use` skill.

## Targets (in priority order)
1. **new trier** — confirm the 71 extracted names really are New Trier Township HS teachers (not a crossover with Warren Township)
2. **mpsaz** — find the real Mesa staff directory URL; document why the scraper returned 0 teachers
3. **bexley** — see if the 25 candidates the scraper pulled were actually STEM teachers (judge false-negative?) or admins (scraper false-positive?)
4. **fcusd** — check if elementary/middle schools have STEM specialists the scraper missed
5. **shaker / bsd405 / lexington / mcps / hcpss** — sanity spot-check teacher rosters vs output to confirm names are real

## Approach
Use `browser-use` skill (chrome-via-cdp) to render each JS-heavy directory, get its full text, and cross-reference against each district's CSV.

## Deliverable
Update `/home/hexatron/code/schoolyank/test-findings.md` with a detailed appendix per school: what the real directory looks like, which teachers were missed, which were mislabeled, and any scraper navigation hints that would unblock future runs.

Files to edit: `/home/hexatron/code/schoolyank/test-findings.md` only.
