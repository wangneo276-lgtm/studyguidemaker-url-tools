import 'package:studyguidemaker_url_tools/studyguidemaker_url_tools.dart';
void main() {
  final urls = Urls();
  if (urls.homeUrl() != 'https://studyguidemaker.net/') throw StateError('home');
  if (urls.source_url('pdf') != 'https://studyguidemaker.net/from/pdf') throw StateError('extra');
}
