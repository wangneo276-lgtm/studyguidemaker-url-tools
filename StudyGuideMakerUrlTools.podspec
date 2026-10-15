Pod::Spec.new do |spec|
  spec.name = 'StudyGuideMakerUrlTools'
  spec.version = '0.1.1'
  spec.summary = 'Offline URL helpers for Study Guide Maker'
  spec.description = 'Offline URL builder for Study Guide Maker source, audience, flashcard, and quiz pages. Not an official SDK.'
  spec.homepage = 'https://studyguidemaker.net/'
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { 'bbwdadfg' => 'https://studyguidemaker.net/' }
  spec.source = { :git => 'https://github.com/wangneo276-lgtm/studyguidemaker-url-tools.git', :tag => 'v0.1.1' }
  spec.source_files = 'swift/Sources/**/*.swift'
  spec.ios.deployment_target = '13.0'
  spec.osx.deployment_target = '10.15'
  spec.swift_version = '5.7'
end
