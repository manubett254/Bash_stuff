#!/usr/bin/env bash
# push.sh — stage, commit (with message or timestamp), and push current branch to origin
set -euo pipefail
IFS=$'\n\t'

err()  { printf '%s\n' "$*" >&2; }
info() { printf '%s\n' "$*"; }

# ensure we are inside a git repo
if ! git rev-parse --git-dir >/dev/null 2>&1; then
  err "Error: not inside a Git repository."
  exit 1
fi

# find current branch (handle detached head gracefully)
branch=$(git rev-parse --abbrev-ref HEAD)
if [[ "$branch" == "HEAD" ]]; then
  err "Error: detached HEAD. Checkout a branch before pushing."
  exit 1
fi

# commit message: first arg, otherwise timestamp
commit_msg="${1:-Auto commit: $(date +'%Y-%m-%d %H:%M:%S')}"

repo_name=$(basename "$(git rev-parse --show-toplevel)")

# show status summary to the user (brief)
info "Repo: $repo_name"
info "Branch: $branch"
info "Preparing to add, commit and push..."
info "Commit message: $commit_msg"

# stage everything (new, modified, deleted)
git add -A

# If there are no staged changes, skip commit
if [[ -z "$(git diff --cached --name-only)" ]]; then
  info "No changes to commit. Skipping commit."
else
  git commit -m "$commit_msg"
  info "Committed changes."
fi

# push to origin
git push -u origin "$branch"
info "Pushed branch '$branch' to origin."
