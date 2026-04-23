#!/usr/bin/env bash
set -euo pipefail

repo_root="$(git rev-parse --show-toplevel)"

cd "$repo_root"

pnpm install --frozen-lockfile
pnpm run build:studio
pnpm --filter hop-desktop tauri build --bundles deb
