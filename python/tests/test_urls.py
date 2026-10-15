import unittest
from studyguidemaker_url_tools import home_url, metadata, page_url
from studyguidemaker_url_tools import source_url
from studyguidemaker_url_tools import audience_url
from studyguidemaker_url_tools import tool_url

class UrlTests(unittest.TestCase):
    def test_metadata(self):
        data = metadata()
        self.assertEqual(data["name"], "Study Guide Maker")
        self.assertTrue(data["homepage"].startswith("https://"))
        self.assertEqual(data["homepage"], "https://studyguidemaker.net/")
        self.assertNotIn(' ', data['homepage'])

    def test_home(self):
        self.assertEqual(home_url(), "https://studyguidemaker.net/")

    def test_pages(self):
        self.assertEqual(page_url("pricing"), "https://studyguidemaker.net/pricing")
        self.assertEqual(page_url("blog"), "https://studyguidemaker.net/blog")

    def test_unknown_page(self):
        with self.assertRaises(ValueError):
            page_url("not-a-page")

    def test_source_url(self):
        self.assertEqual(source_url("pdf"), "https://studyguidemaker.net/from/pdf")
        self.assertEqual(source_url("powerpoint"), "https://studyguidemaker.net/from/powerpoint")
        self.assertEqual(source_url("notes"), "https://studyguidemaker.net/from/notes")
        self.assertEqual(source_url("word"), "https://studyguidemaker.net/from/word")
        with self.assertRaises(ValueError):
            source_url("not-listed")

    def test_audience_url(self):
        self.assertEqual(audience_url("college-students"), "https://studyguidemaker.net/for/college-students")
        self.assertEqual(audience_url("high-school"), "https://studyguidemaker.net/for/high-school")
        self.assertEqual(audience_url("teachers"), "https://studyguidemaker.net/for/teachers")
        with self.assertRaises(ValueError):
            audience_url("not-listed")

    def test_tool_url(self):
        self.assertEqual(tool_url("flashcard-maker"), "https://studyguidemaker.net/tools/flashcard-maker")
        self.assertEqual(tool_url("quiz-generator"), "https://studyguidemaker.net/tools/quiz-generator")
        with self.assertRaises(ValueError):
            tool_url("not-listed")

if __name__ == '__main__':
    unittest.main()
