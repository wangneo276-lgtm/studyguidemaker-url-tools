package pro.studyguidemaker;

import java.util.HashMap;
import java.util.Map;

public final class Urls {
    public static final String BASE = "https://studyguidemaker.net";
    private static final Map<String, String> PAGES = new HashMap<>();
    static {
        PAGES.put("pricing", "/pricing");
        PAGES.put("blog", "/blog");
    }
    private Urls() {}
    public static String homeUrl() { return BASE + "/"; }
    public static String pageUrl(String name) {
        String path = PAGES.get(name);
        if (path == null) throw new IllegalArgumentException("unknown page: " + name);
        return BASE + path;
    }

    public static String sourceUrl(String slug) {
        if (!java.util.Set.of("pdf", "powerpoint", "notes", "word").contains(slug)) {
            throw new IllegalArgumentException("unknown source_url: " + slug);
        }
        return BASE + "/from/" + slug + "";
    }
    public static String audienceUrl(String slug) {
        if (!java.util.Set.of("college-students", "high-school", "teachers").contains(slug)) {
            throw new IllegalArgumentException("unknown audience_url: " + slug);
        }
        return BASE + "/for/" + slug + "";
    }
    public static String toolUrl(String slug) {
        if (!java.util.Set.of("flashcard-maker", "quiz-generator").contains(slug)) {
            throw new IllegalArgumentException("unknown tool_url: " + slug);
        }
        return BASE + "/tools/" + slug + "";
    }
}
