class Urls {
  static const base = 'https://studyguidemaker.net';
  static const pages = <String, String>{ 'pricing': '/pricing', 'blog': '/blog' };
  String homeUrl() => base + '/';
  String pageUrl(String name) {
    final path = pages[name];
    if (path == null) throw ArgumentError('unknown page: $name');
    return base + path;
  }

  String source_url(String slug) {
    const allowed = ['pdf', 'powerpoint', 'notes', 'word'];
    if (!allowed.contains(slug)) throw ArgumentError('unknown source_url: $slug');
    return base + '/from/' + slug + '';
  }
  String audience_url(String slug) {
    const allowed = ['college-students', 'high-school', 'teachers'];
    if (!allowed.contains(slug)) throw ArgumentError('unknown audience_url: $slug');
    return base + '/for/' + slug + '';
  }
  String tool_url(String slug) {
    const allowed = ['flashcard-maker', 'quiz-generator'];
    if (!allowed.contains(slug)) throw ArgumentError('unknown tool_url: $slug');
    return base + '/tools/' + slug + '';
  }
}
