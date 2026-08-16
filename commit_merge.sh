#!/bin/bash
# Fork merge commit - upstream v2026.8.13 + local fixes
cd /opt/data/work/hermes-fork-merge || exit 1
git add -A
git commit -m "chore: merge upstream v2026.8.13 + re-apply 5 local fixes

- Merge upstream v2026.8.13 (v0.20.1) into fork main (0 conflicts, fork
  customizations auto-merged: config_defaults, skill_manager_tool, background_review)
- Re-apply lifecycle-guard heredoc false-positive fix (cron/lifecycle_guard.py)
- Re-apply approval quote-aware backslash strip + command-substitution
  grep skip (tools/approval.py, 2 fixes)
- Re-apply skill_view dedup read-before-write fix (tools/skills_tool.py)
- Re-apply plugin command session bind (gw/run.py) + background_review
  session_id construction (agent/background_review.py)
- background_review memory-form iron rule prompts (fork customization 2026-08-15)

All fixes verified against v0.20.1 baseline: 37/37 tests pass (test_guard_fix 9,
test_approval_fix 16, test_cmdsubst_fix 6, test_e2e 6), py_compile clean."
