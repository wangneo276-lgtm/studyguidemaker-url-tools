package StudyGuideMaker::UrlTools;
use strict;
use warnings;
our $VERSION = '0.1.1';
my $BASE = 'https://studyguidemaker.net';
my %PAGES = (
        'pricing' => '/pricing',
        'blog' => '/blog',
);

sub home_url { return $BASE . '/'; }

sub page_url {
    my ($name) = @_;
    die "unknown page: $name" unless exists $PAGES{$name // ''};
    return $BASE . $PAGES{$name};
}

sub source_url {
    my ($slug) = @_;
    my %allowed = map { $_ => 1 } ('pdf', 'powerpoint', 'notes', 'word');
    die "unknown source_url: $slug" unless $allowed{$slug // ''};
    return $BASE . '/from/' . $slug . '';
}
sub audience_url {
    my ($slug) = @_;
    my %allowed = map { $_ => 1 } ('college-students', 'high-school', 'teachers');
    die "unknown audience_url: $slug" unless $allowed{$slug // ''};
    return $BASE . '/for/' . $slug . '';
}
sub tool_url {
    my ($slug) = @_;
    my %allowed = map { $_ => 1 } ('flashcard-maker', 'quiz-generator');
    die "unknown tool_url: $slug" unless $allowed{$slug // ''};
    return $BASE . '/tools/' . $slug . '';
}
1;
