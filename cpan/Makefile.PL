use strict;
use warnings;
use ExtUtils::MakeMaker;
WriteMakefile(
    NAME => 'StudyGuideMaker::UrlTools',
    VERSION_FROM => 'lib/StudyGuideMaker/UrlTools.pm',
    ABSTRACT => 'Offline URL helpers for Study Guide Maker',
    AUTHOR => 'bbwdadfg',
    LICENSE => 'mit',
    META_MERGE => { resources => { homepage => 'https://studyguidemaker.net/', repository => 'https://github.com/wangneo276-lgtm/studyguidemaker-url-tools' } },
);
