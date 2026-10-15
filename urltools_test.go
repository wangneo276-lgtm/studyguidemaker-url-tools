package urltools

import "testing"

func TestMetadata(t *testing.T) {
    data := Metadata()
    if data["name"] != "Study Guide Maker" {
        t.Fatalf("brand %s", data["name"])
    }
    if data["homepage"] != "https://studyguidemaker.net/" {
        t.Fatalf("homepage %s", data["homepage"])
    }
}

func TestPages(t *testing.T) {
    {
        got, err := PageURL("pricing")
        if err != nil { t.Fatal(err) }
        if got != "https://studyguidemaker.net/pricing" { t.Fatalf("%s", got) }
    }
    {
        got, err := PageURL("blog")
        if err != nil { t.Fatal(err) }
        if got != "https://studyguidemaker.net/blog" { t.Fatalf("%s", got) }
    }
    if _, err := PageURL("not-a-page"); err == nil { t.Fatal("expected error") }
}

func TestSourceURL(t *testing.T) {
    {
        got, err := SourceURL("pdf")
        if err != nil { t.Fatal(err) }
        if got != "https://studyguidemaker.net/from/pdf" { t.Fatalf("%s", got) }
    }
    {
        got, err := SourceURL("powerpoint")
        if err != nil { t.Fatal(err) }
        if got != "https://studyguidemaker.net/from/powerpoint" { t.Fatalf("%s", got) }
    }
    {
        got, err := SourceURL("notes")
        if err != nil { t.Fatal(err) }
        if got != "https://studyguidemaker.net/from/notes" { t.Fatalf("%s", got) }
    }
    {
        got, err := SourceURL("word")
        if err != nil { t.Fatal(err) }
        if got != "https://studyguidemaker.net/from/word" { t.Fatalf("%s", got) }
    }
    if _, err := SourceURL("not-listed"); err == nil { t.Fatal("expected error") }
}

func TestAudienceURL(t *testing.T) {
    {
        got, err := AudienceURL("college-students")
        if err != nil { t.Fatal(err) }
        if got != "https://studyguidemaker.net/for/college-students" { t.Fatalf("%s", got) }
    }
    {
        got, err := AudienceURL("high-school")
        if err != nil { t.Fatal(err) }
        if got != "https://studyguidemaker.net/for/high-school" { t.Fatalf("%s", got) }
    }
    {
        got, err := AudienceURL("teachers")
        if err != nil { t.Fatal(err) }
        if got != "https://studyguidemaker.net/for/teachers" { t.Fatalf("%s", got) }
    }
    if _, err := AudienceURL("not-listed"); err == nil { t.Fatal("expected error") }
}

func TestToolURL(t *testing.T) {
    {
        got, err := ToolURL("flashcard-maker")
        if err != nil { t.Fatal(err) }
        if got != "https://studyguidemaker.net/tools/flashcard-maker" { t.Fatalf("%s", got) }
    }
    {
        got, err := ToolURL("quiz-generator")
        if err != nil { t.Fatal(err) }
        if got != "https://studyguidemaker.net/tools/quiz-generator" { t.Fatalf("%s", got) }
    }
    if _, err := ToolURL("not-listed"); err == nil { t.Fatal("expected error") }
}
