const BASE: &str = "https://studyguidemaker.net";

fn join(path: &str) -> String {
    format!("{BASE}{path}")
}

pub fn home_url() -> String {
    format!("{BASE}/")
}

pub fn page_url(name: &str) -> Result<String, &'static str> {
    let path = match name {
        "pricing" => "/pricing",
        "blog" => "/blog",
        _ => return Err("unknown page"),
    };
    Ok(join(path))
}

pub fn source_url(slug: &str) -> Result<String, &'static str> {
    let path = match slug {
        "pdf" => "/from/pdf",
        "powerpoint" => "/from/powerpoint",
        "notes" => "/from/notes",
        "word" => "/from/word",
        _ => return Err("unknown source"),
    };
    Ok(join(path))
}

pub fn audience_url(slug: &str) -> Result<String, &'static str> {
    let path = match slug {
        "college-students" => "/for/college-students",
        "high-school" => "/for/high-school",
        "teachers" => "/for/teachers",
        _ => return Err("unknown audience"),
    };
    Ok(join(path))
}

pub fn tool_url(slug: &str) -> Result<String, &'static str> {
    let path = match slug {
        "flashcard-maker" => "/tools/flashcard-maker",
        "quiz-generator" => "/tools/quiz-generator",
        _ => return Err("unknown tool"),
    };
    Ok(join(path))
}

pub fn metadata() -> Vec<(&'static str, String)> {
    vec![
        ("name", "Study Guide Maker".to_string()),
        ("homepage", home_url()),
        ("description", "Offline URL builder for Study Guide Maker source, audience, flashcard, and quiz pages. Not an official SDK.".to_string()),
    ]
}
