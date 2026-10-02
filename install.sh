#!/usr/bin/env bash
# Universal Agent Skills Installer (dhanji4U/skills)
# Installs curated agent skills to your assistant's skills directory.
#
# Usage:
#   ./install.sh --agent <agent> [--category <cat>] [--skill <name>] [--all]
#   ./install.sh --list
#
# Supported agents:
#   antigravity  -> ~/.gemini/config/skills/
#   codex        -> ~/.agents/skills/
#   claude-code  -> ~/.claude/skills/
#   cursor       -> ~/.cursor/plugins/local/curated-skills/skills/
#   project      -> ./.agents/skills/ (current repository)

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILLS_DIR="${SCRIPT_DIR}/skills"

AGENT=""
CATEGORY=""
SKILL=""
INSTALL_ALL=false
LIST_ONLY=false
DEST_OVERRIDE=""

usage() {
    cat <<EOF
Universal Agent Skills Installer

Usage:
  ./install.sh --agent <name> [options]
  ./install.sh --list

Options:
  -a, --agent <name>       Target agent: antigravity | codex | claude-code | cursor | project
  -c, --category <name>    Install all skills in category: principles, workflows, quality, thinking, architecture, meta, writing
  -s, --skill <name>       Install a specific skill by name
      --all                Install all available skills
  -d, --dest <path>        Custom destination directory (overrides default agent path)
  -l, --list               List all available skills and categories
  -h, --help               Show this help message

Examples:
  ./install.sh --list
  ./install.sh --agent antigravity --all
  ./install.sh --agent claude-code --category principles
  ./install.sh --agent codex --skill tdd
  ./install.sh --agent project --category workflows
EOF
    exit 0
}

list_skills() {
    echo "=================================================================="
    echo " Available Curated Agent Skills (dhanji4U/skills)"
    echo "=================================================================="
    for cat_dir in "${SKILLS_DIR}"/*; do
        if [ -d "${cat_dir}" ]; then
            cat_name="$(basename "${cat_dir}")"
            count=$(find "${cat_dir}" -mindepth 1 -maxdepth 1 -type d | wc -l)
            echo ""
            echo "Category: ${cat_name} (${count} skills)"
            echo "--------------------------------------------------"
            for s_dir in "${cat_dir}"/*; do
                if [ -d "${s_dir}" ]; then
                    s_name="$(basename "${s_dir}")"
                    echo "  - ${s_name}"
                fi
            done
        fi
    done
    echo ""
    exit 0
}

# Parse flags
while [[ $# -gt 0 ]]; do
    case "$1" in
        -a|--agent)
            AGENT="$2"
            shift 2
            ;;
        -c|--category)
            CATEGORY="$2"
            shift 2
            ;;
        -s|--skill)
            SKILL="$2"
            shift 2
            ;;
        --all)
            INSTALL_ALL=true
            shift
            ;;
        -d|--dest)
            DEST_OVERRIDE="$2"
            shift 2
            ;;
        -l|--list)
            LIST_ONLY=true
            shift
            ;;
        -h|--help)
            usage
            ;;
        *)
            echo "Unknown option: $1"
            usage
            ;;
    esac
done

if [ "${LIST_ONLY}" = true ]; then
    list_skills
fi

if [ -z "${AGENT}" ] && [ -z "${DEST_OVERRIDE}" ]; then
    echo "Error: --agent or --dest is required."
    echo "Run './install.sh --help' for usage."
    exit 1
fi

TARGET_DIR=""
if [ -n "${DEST_OVERRIDE}" ]; then
    TARGET_DIR="${DEST_OVERRIDE}"
else
    case "${AGENT}" in
        antigravity)
            TARGET_DIR="${HOME}/.gemini/config/skills"
            ;;
        codex)
            TARGET_DIR="${HOME}/.agents/skills"
            ;;
        claude-code)
            TARGET_DIR="${HOME}/.claude/skills"
            ;;
        cursor)
            TARGET_DIR="${HOME}/.cursor/plugins/local/curated-skills/skills"
            ;;
        project)
            TARGET_DIR="./.agents/skills"
            ;;
        *)
            echo "Error: Unsupported agent '${AGENT}'."
            echo "Supported agents: antigravity, codex, claude-code, cursor, project"
            exit 1
            ;;
    esac
fi

mkdir -p "${TARGET_DIR}"

install_skill() {
    local src_dir="$1"
    local skill_name="$(basename "${src_dir}")"
    local dest_dir="${TARGET_DIR}/${skill_name}"

    mkdir -p "${dest_dir}"
    cp -r "${src_dir}"/* "${dest_dir}/"
    echo "  Installed: ${skill_name} -> ${dest_dir}"
}

echo "==> Target directory: ${TARGET_DIR}"

INSTALLED=0

if [ -n "${SKILL}" ]; then
    FOUND=false
    for s_dir in "${SKILLS_DIR}"/*/"${SKILL}"; do
        if [ -d "${s_dir}" ]; then
            install_skill "${s_dir}"
            INSTALLED=$((INSTALLED + 1))
            FOUND=true
            break
        fi
    done
    if [ "${FOUND}" = false ]; then
        echo "Error: Skill '${SKILL}' not found."
        exit 1
    fi
elif [ -n "${CATEGORY}" ]; then
    CAT_PATH="${SKILLS_DIR}/${CATEGORY}"
    if [ ! -d "${CAT_PATH}" ]; then
        echo "Error: Category '${CATEGORY}' not found."
        exit 1
    fi
    echo "==> Installing category '${CATEGORY}'..."
    for s_dir in "${CAT_PATH}"/*; do
        if [ -d "${s_dir}" ]; then
            install_skill "${s_dir}"
            INSTALLED=$((INSTALLED + 1))
        fi
    done
elif [ "${INSTALL_ALL}" = true ]; then
    echo "==> Installing all available skills..."
    for cat_dir in "${SKILLS_DIR}"/*; do
        if [ -d "${cat_dir}" ]; then
            for s_dir in "${cat_dir}"/*; do
                if [ -d "${s_dir}" ]; then
                    install_skill "${s_dir}"
                    INSTALLED=$((INSTALLED + 1))
                fi
            done
        fi
    done
else
    echo "Error: Specify --skill <name>, --category <name>, or --all"
    exit 1
fi

echo ""
echo "Done! Successfully installed ${INSTALLED} skill(s) into ${TARGET_DIR}."

