using System;
using System.Collections.Generic;
using System.Text.RegularExpressions;

namespace StudyGuideMaker.UrlTools;

public static partial class Urls
{
    public const string Base = "https://studyguidemaker.net";
    private static readonly Dictionary<string, string> Pages = new()
    {
        { "pricing", "/pricing" },
        { "blog", "/blog" },
    };

    public static string HomeUrl() => Base + "/";

    public static string PageUrl(string name)
    {
        if (!Pages.TryGetValue(name, out var path))
            throw new ArgumentException("unknown page: " + name);
        return Base + path;
    }

    public static string SourceUrl(string slug)
    {
        string[] allowed = new[] { "pdf", "powerpoint", "notes", "word" };
        if (Array.IndexOf(allowed, slug) < 0)
            throw new ArgumentException("unknown source_url: " + slug);
        return Base + "/from/" + slug + "";
    }
    public static string AudienceUrl(string slug)
    {
        string[] allowed = new[] { "college-students", "high-school", "teachers" };
        if (Array.IndexOf(allowed, slug) < 0)
            throw new ArgumentException("unknown audience_url: " + slug);
        return Base + "/for/" + slug + "";
    }
    public static string ToolUrl(string slug)
    {
        string[] allowed = new[] { "flashcard-maker", "quiz-generator" };
        if (Array.IndexOf(allowed, slug) < 0)
            throw new ArgumentException("unknown tool_url: " + slug);
        return Base + "/tools/" + slug + "";
    }
}
