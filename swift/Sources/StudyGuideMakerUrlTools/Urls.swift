import Foundation

public enum UrlError: Error { case unknown(String, String) }

public enum Urls {
    public static let base = "https://studyguidemaker.net"
    private static let pages: [String: String] = ["pricing": "/pricing", "blog": "/blog"]
    public static func homeUrl() -> String { base + "/" }
    public static func pageUrl(_ name: String) throws -> String {
        guard let path = pages[name] else { throw UrlError.unknown("page", name) }
        return base + path
    }

    public static func sourceUrl(_ slug: String) throws -> String {
        let allowed = ["pdf", "powerpoint", "notes", "word"]
        guard allowed.contains(slug) else { throw UrlError.unknown("source_url", slug) }
        return base + "/from/" + slug + ""
    }
    public static func audienceUrl(_ slug: String) throws -> String {
        let allowed = ["college-students", "high-school", "teachers"]
        guard allowed.contains(slug) else { throw UrlError.unknown("audience_url", slug) }
        return base + "/for/" + slug + ""
    }
    public static func toolUrl(_ slug: String) throws -> String {
        let allowed = ["flashcard-maker", "quiz-generator"]
        guard allowed.contains(slug) else { throw UrlError.unknown("tool_url", slug) }
        return base + "/tools/" + slug + ""
    }
}
