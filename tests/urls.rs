use studyguidemaker_url_tools::{home_url, metadata, page_url};
use studyguidemaker_url_tools::source_url;
use studyguidemaker_url_tools::audience_url;
use studyguidemaker_url_tools::tool_url;

#[test]
fn metadata_has_homepage() {
    let data = metadata();
    assert!(data.iter().any(|(k, v)| *k == "name" && v == "Study Guide Maker"));
    assert!(data.iter().any(|(k, v)| *k == "homepage" && v == "https://studyguidemaker.net/"));
}

#[test]
fn pages_match() {
    assert_eq!(page_url("pricing").unwrap(), "https://studyguidemaker.net/pricing");
    assert_eq!(page_url("blog").unwrap(), "https://studyguidemaker.net/blog");
    assert!(page_url("not-a-page").is_err());
}

#[test]
fn source_url_matches() {
    assert_eq!(source_url("pdf").unwrap(), "https://studyguidemaker.net/from/pdf");
    assert_eq!(source_url("powerpoint").unwrap(), "https://studyguidemaker.net/from/powerpoint");
    assert_eq!(source_url("notes").unwrap(), "https://studyguidemaker.net/from/notes");
    assert_eq!(source_url("word").unwrap(), "https://studyguidemaker.net/from/word");
    assert!(source_url("not-listed").is_err());
}

#[test]
fn audience_url_matches() {
    assert_eq!(audience_url("college-students").unwrap(), "https://studyguidemaker.net/for/college-students");
    assert_eq!(audience_url("high-school").unwrap(), "https://studyguidemaker.net/for/high-school");
    assert_eq!(audience_url("teachers").unwrap(), "https://studyguidemaker.net/for/teachers");
    assert!(audience_url("not-listed").is_err());
}

#[test]
fn tool_url_matches() {
    assert_eq!(tool_url("flashcard-maker").unwrap(), "https://studyguidemaker.net/tools/flashcard-maker");
    assert_eq!(tool_url("quiz-generator").unwrap(), "https://studyguidemaker.net/tools/quiz-generator");
    assert!(tool_url("not-listed").is_err());
}
