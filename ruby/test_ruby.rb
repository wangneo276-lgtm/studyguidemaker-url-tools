require_relative 'lib/studyguidemaker_url_tools'
raise 'home' unless StudyguidemakerUrlTools.home_url == "https://studyguidemaker.net/"
raise 'page' unless StudyguidemakerUrlTools.page_url("pricing") == "https://studyguidemaker.net/pricing"
begin
  StudyguidemakerUrlTools.page_url('not-a-page')
  raise 'page should fail'
rescue ArgumentError
end
raise 'extra' unless StudyguidemakerUrlTools.source_url("pdf") == "https://studyguidemaker.net/from/pdf"
begin
  StudyguidemakerUrlTools.source_url('NOT A SLUG')
  raise 'extra should fail'
rescue ArgumentError
end
puts 'ok'
