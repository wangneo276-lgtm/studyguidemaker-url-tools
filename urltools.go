package urltools

import (
    "fmt"
)

const baseURL = "https://studyguidemaker.net"

func HomeURL() string {
    return baseURL + "/"
}

func PageURL(name string) (string, error) {
    pages := map[string]string{
        "pricing": "/pricing",
        "blog": "/blog",
    }
    path, ok := pages[name]
    if !ok {
        return "", fmt.Errorf("unknown page: %s", name)
    }
    return baseURL + path, nil
}

func SourceURL(slug string) (string, error) {
    switch slug {
    case "pdf", "powerpoint", "notes", "word":
        return baseURL + "/from/" + slug + "", nil
    default:
        return "", fmt.Errorf("unknown source: %s", slug)
    }
}

func AudienceURL(slug string) (string, error) {
    switch slug {
    case "college-students", "high-school", "teachers":
        return baseURL + "/for/" + slug + "", nil
    default:
        return "", fmt.Errorf("unknown audience: %s", slug)
    }
}

func ToolURL(slug string) (string, error) {
    switch slug {
    case "flashcard-maker", "quiz-generator":
        return baseURL + "/tools/" + slug + "", nil
    default:
        return "", fmt.Errorf("unknown tool: %s", slug)
    }
}

func Metadata() map[string]string {
    return map[string]string{
        "name":        "Study Guide Maker",
        "homepage":    HomeURL(),
        "description": "Offline URL builder for Study Guide Maker source, audience, flashcard, and quiz pages. Not an official SDK.",
    }
}
