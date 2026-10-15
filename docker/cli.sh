#!/bin/sh
set -eu
base="https://studyguidemaker.net"
cmd="${1:-}"
case "$cmd" in
  home)
    printf "%s\n" "$base/"
    ;;
  page)
    case "${2:-}" in
      pricing) printf '%s\n' "$base/pricing" ;;
      blog) printf '%s\n' "$base/blog" ;;
      *) echo "unknown page" >&2; exit 2 ;;
    esac
    ;;
  source)
    case "${2:-}" in
      pdf) printf '%s\n' "$base/from/pdf" ;;
      powerpoint) printf '%s\n' "$base/from/powerpoint" ;;
      notes) printf '%s\n' "$base/from/notes" ;;
      word) printf '%s\n' "$base/from/word" ;;
      *) echo "unknown source" >&2; exit 2 ;;
    esac
    ;;
  audience)
    case "${2:-}" in
      college-students) printf '%s\n' "$base/for/college-students" ;;
      high-school) printf '%s\n' "$base/for/high-school" ;;
      teachers) printf '%s\n' "$base/for/teachers" ;;
      *) echo "unknown audience" >&2; exit 2 ;;
    esac
    ;;
  tool)
    case "${2:-}" in
      flashcard-maker) printf '%s\n' "$base/tools/flashcard-maker" ;;
      quiz-generator) printf '%s\n' "$base/tools/quiz-generator" ;;
      *) echo "unknown tool" >&2; exit 2 ;;
    esac
    ;;
  *)
    echo "usage: studyguidemaker-url-tools home | page <name> | source <slug> | audience <slug> | tool <slug>" >&2
    exit 2
    ;;
esac
