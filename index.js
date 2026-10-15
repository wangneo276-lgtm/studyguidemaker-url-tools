const BASE = "https://studyguidemaker.net";
const PAGES = {"pricing": "/pricing", "blog": "/blog"};

function join(path) {
  return BASE + path;
}

export function homeUrl() {
  return BASE + '/';
}

export function pageUrl(name) {
  if (!Object.prototype.hasOwnProperty.call(PAGES, name)) {
    throw new Error(`unknown page: ${name}`);
  }
  return join(PAGES[name]);
}

const SOURCES = new Set(["pdf", "powerpoint", "notes", "word"]);
export function sourceUrl(slug) {
  if (!SOURCES.has(slug)) {
    throw new Error(`unknown source: ${slug}`);
  }
  return join("/from/" + slug + "");
}

const AUDIENCES = new Set(["college-students", "high-school", "teachers"]);
export function audienceUrl(slug) {
  if (!AUDIENCES.has(slug)) {
    throw new Error(`unknown audience: ${slug}`);
  }
  return join("/for/" + slug + "");
}

const TOOLS = new Set(["flashcard-maker", "quiz-generator"]);
export function toolUrl(slug) {
  if (!TOOLS.has(slug)) {
    throw new Error(`unknown tool: ${slug}`);
  }
  return join("/tools/" + slug + "");
}

export function metadata() {
  const canonicalPages = { home: homeUrl() };
  for (const name of Object.keys(PAGES)) canonicalPages[name] = pageUrl(name);
  canonicalPages.source = sourceUrl("pdf");
  canonicalPages.audience = audienceUrl("college-students");
  canonicalPages.tool = toolUrl("flashcard-maker");
  return {
    name: "Study Guide Maker",
    homepage: homeUrl(),
    description: "Offline URL builder for Study Guide Maker source, audience, flashcard, and quiz pages. Not an official SDK.",
    canonicalPages,
    tags: ["study", "flashcards", "url-builder"],
  };
}
