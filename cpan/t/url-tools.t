use strict;
use warnings;
use Test::More tests => 2;
use lib 'lib';
use StudyGuideMaker::UrlTools;
is(StudyGuideMaker::UrlTools::home_url(), 'https://studyguidemaker.net/', 'home');
is(StudyGuideMaker::UrlTools::source_url('pdf'), 'https://studyguidemaker.net/from/pdf', 'extra');
