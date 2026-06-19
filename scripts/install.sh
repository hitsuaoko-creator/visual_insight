#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_NAME="visual-insight"

install_one() {
  local target_root="$1"
  local adapter_dir="$2"
  local target_dir="${target_root}/${SKILL_NAME}"

  mkdir -p "${target_root}"
  rm -rf "${target_dir}"
  mkdir -p "${target_dir}"

  cp "${ROOT_DIR}/README.md" "${target_dir}/README.md"
  cp "${ROOT_DIR}/AGENTS.md" "${target_dir}/AGENTS.md"
  cp "${ROOT_DIR}/CLAUDE.md" "${target_dir}/CLAUDE.md"
  cp "${ROOT_DIR}/${adapter_dir}/SKILL.md" "${target_dir}/SKILL.md"
  cp "${ROOT_DIR}/LICENSE" "${target_dir}/LICENSE"
  cp -R "${ROOT_DIR}/docs" "${target_dir}/docs"
  cp -R "${ROOT_DIR}/prompts" "${target_dir}/prompts"

  if [ -d "${ROOT_DIR}/agents" ]; then
    cp -R "${ROOT_DIR}/agents" "${target_dir}/agents"
  fi
}

install_one "${HOME}/.codex/skills" ".codex/skills/${SKILL_NAME}"
install_one "${HOME}/.cursor/skills" ".cursor/skills/${SKILL_NAME}"
install_one "${HOME}/.claude/skills" ".claude/skills/${SKILL_NAME}"

echo "Installed ${SKILL_NAME} to:"
echo "- ${HOME}/.codex/skills/${SKILL_NAME}"
echo "- ${HOME}/.cursor/skills/${SKILL_NAME}"
echo "- ${HOME}/.claude/skills/${SKILL_NAME}"
echo
echo "Restart Codex / Cursor / Claude Code if the /visual-insight skill does not appear immediately."
