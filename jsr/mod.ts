const BASE = "https://studyguidemaker.net";
const PAGES: Record<string, string> = { "pricing": "/pricing", "blog": "/blog" };
export function homeUrl(): string { return BASE + "/"; }
export function pageUrl(name: string): string {
  const path = PAGES[name];
  if (!path) throw new Error("unknown page: " + name);
  return BASE + path;
}

export function sourceUrl(slug: string): string {
  const allowed = ["pdf", "powerpoint", "notes", "word"];
  if (!allowed.includes(slug)) throw new Error("unknown source_url: " + slug);
  return BASE + "/from/" + slug + "";
}
export function audienceUrl(slug: string): string {
  const allowed = ["college-students", "high-school", "teachers"];
  if (!allowed.includes(slug)) throw new Error("unknown audience_url: " + slug);
  return BASE + "/for/" + slug + "";
}
export function toolUrl(slug: string): string {
  const allowed = ["flashcard-maker", "quiz-generator"];
  if (!allowed.includes(slug)) throw new Error("unknown tool_url: " + slug);
  return BASE + "/tools/" + slug + "";
}
