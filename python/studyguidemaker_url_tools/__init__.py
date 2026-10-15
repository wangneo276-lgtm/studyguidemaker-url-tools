from __future__ import annotations

_BASE = "https://studyguidemaker.net"
_BRAND = "Study Guide Maker"
_DESCRIPTION = "Offline URL builder for Study Guide Maker source, audience, flashcard, and quiz pages. Not an official SDK."
_TAGS = ["study", "flashcards", "url-builder"]
_PAGES = {
    "pricing": "/pricing",
    "blog": "/blog"
}

_SOURCES = ["pdf", "powerpoint", "notes", "word"]
_AUDIENCES = ["college-students", "high-school", "teachers"]
_TOOLS = ["flashcard-maker", "quiz-generator"]

def _join(path: str) -> str:
    return _BASE + path

def home_url() -> str:
    return _BASE + "/"

def page_url(name: str) -> str:
    try:
        path = _PAGES[name]
    except KeyError:
        raise ValueError(f"unknown page: {name}") from None
    return _join(path)

def source_url(slug: str) -> str:
    if slug not in _SOURCES:
        raise ValueError(f"unknown source: {slug}")
    return _join("/from/" + slug + "")

def audience_url(slug: str) -> str:
    if slug not in _AUDIENCES:
        raise ValueError(f"unknown audience: {slug}")
    return _join("/for/" + slug + "")

def tool_url(slug: str) -> str:
    if slug not in _TOOLS:
        raise ValueError(f"unknown tool: {slug}")
    return _join("/tools/" + slug + "")

def metadata() -> dict[str, object]:
    pages = {'home': home_url()}
    for name in _PAGES:
        pages[name] = page_url(name)
    pages.update({
        "source": source_url("pdf"),
        "audience": audience_url("college-students"),
        "tool": tool_url("flashcard-maker"),
    })
    return {
        "name": _BRAND,
        "homepage": home_url(),
        "description": _DESCRIPTION,
        "canonicalPages": pages,
        "tags": list(_TAGS),
    }
