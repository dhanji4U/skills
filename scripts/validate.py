#!/usr/bin/env python3
"""Validation suite for dhanji4U/skills:
- Validates YAML frontmatter on all SKILL.md files
- Ensures no broken relative markdown links
- Validates catalog.json accuracy against filesystem
"""

import json
import os
import re
import sys

ROOT_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
SKILLS_DIR = os.path.join(ROOT_DIR, "skills")
CATALOG_FILE = os.path.join(ROOT_DIR, "catalog.json")


def validate_frontmatter():
    print("==> Checking SKILL.md YAML frontmatter...")
    errors = []
    skill_count = 0

    for root, dirs, files in os.walk(SKILLS_DIR):
        if "SKILL.md" in files:
            skill_count += 1
            path = os.path.join(root, "SKILL.md")
            rel_path = os.path.relpath(path, ROOT_DIR)
            with open(path, "r", errors="ignore") as f:
                content = f.read()

            if not content.startswith("---"):
                errors.append(f"{rel_path}: Missing starting '---' for YAML frontmatter")
                continue

            end = content.find("---", 3)
            if end == -1:
                errors.append(f"{rel_path}: Missing closing '---' for YAML frontmatter")
                continue

            fm = content[3:end]
            if "name:" not in fm:
                errors.append(f"{rel_path}: Missing 'name:' in frontmatter")
            if "description:" not in fm:
                errors.append(f"{rel_path}: Missing 'description:' in frontmatter")

    print(f"    Scanned {skill_count} skills.")
    if errors:
        for err in errors:
            print(f"    FAIL: {err}")
        return False
    print("    All skills have valid frontmatter.")
    return True


def validate_links():
    print("==> Checking relative markdown links...")
    broken = []
    total_links = 0

    for root, dirs, files in os.walk(SKILLS_DIR):
        for f in files:
            if f.endswith(".md"):
                path = os.path.join(root, f)
                rel_path = os.path.relpath(path, ROOT_DIR)
                with open(path, "r", errors="ignore") as fp:
                    txt = fp.read()

                matches = re.findall(r"\[([^\]]*)\]\(([^)]+)\)", txt)
                for text, link in matches:
                    if link.startswith(("http://", "https://", "mailto:", "#")):
                        continue
                    clean = link.split("#")[0].strip()
                    if not clean:
                        continue
                    total_links += 1
                    target = os.path.normpath(os.path.join(root, clean))
                    if not os.path.exists(target):
                        broken.append((rel_path, link, text))

    print(f"    Checked {total_links} relative links.")
    if broken:
        for b in broken:
            print(f"    BROKEN: {b[0]} -> {b[1]} ('{b[2]}')")
        return False
    print("    All relative links resolve correctly (0 broken links).")
    return True


def validate_catalog():
    print("==> Checking catalog.json...")
    if not os.path.exists(CATALOG_FILE):
        print(f"    WARN: {CATALOG_FILE} does not exist yet.")
        return True

    with open(CATALOG_FILE, "r") as f:
        catalog = json.load(f)

    catalog_skills = {s["path"]: s for s in catalog.get("skills", [])}
    fs_skills = set()

    for cat in os.listdir(SKILLS_DIR):
        cat_path = os.path.join(SKILLS_DIR, cat)
        if os.path.isdir(cat_path):
            for s in os.listdir(cat_path):
                if os.path.isdir(os.path.join(cat_path, s)):
                    fs_skills.add(f"skills/{cat}/{s}")

    missing_in_catalog = fs_skills - set(catalog_skills.keys())
    missing_in_fs = set(catalog_skills.keys()) - fs_skills

    if missing_in_catalog:
        print(f"    FAIL: Skills on disk but missing from catalog.json: {missing_in_catalog}")
        return False
    if missing_in_fs:
        print(f"    FAIL: Skills in catalog.json but missing on disk: {missing_in_fs}")
        return False

    print(f"    catalog.json matches filesystem ({len(catalog_skills)} skills indexed).")
    return True


def main():
    fm_ok = validate_frontmatter()
    links_ok = validate_links()
    catalog_ok = validate_catalog()

    if fm_ok and links_ok and catalog_ok:
        print("\nAll validation checks PASSED!")
        sys.exit(0)
    else:
        print("\nValidation FAILED!")
        sys.exit(1)


if __name__ == "__main__":
    main()
