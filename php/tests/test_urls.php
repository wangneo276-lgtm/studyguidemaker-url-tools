<?php

declare(strict_types=1);

require __DIR__ . '/../src/StudyguidemakerUrlTools/Urls.php';

use StudyguidemakerUrlTools\Urls;

function expect(bool $ok, string $message): void
{
    if (!$ok) {
        fwrite(STDERR, $message . PHP_EOL);
        exit(1);
    }
}

$meta = Urls::metadata();
expect($meta['name'] === 'Study Guide Maker', 'brand');
expect($meta['homepage'] === 'https://studyguidemaker.net/', 'homepage');
expect(!str_contains($meta['homepage'], ' '), 'space');
expect(Urls::pageUrl('pricing') === 'https://studyguidemaker.net/pricing', 'page pricing');
expect(Urls::pageUrl('blog') === 'https://studyguidemaker.net/blog', 'page blog');
try { Urls::pageUrl('not-a-page'); expect(false, 'unknown page should throw'); } catch (InvalidArgumentException $e) {}
expect(Urls::sourceUrl('pdf') === 'https://studyguidemaker.net/from/pdf', 'sourceUrl pdf');
expect(Urls::sourceUrl('powerpoint') === 'https://studyguidemaker.net/from/powerpoint', 'sourceUrl powerpoint');
expect(Urls::sourceUrl('notes') === 'https://studyguidemaker.net/from/notes', 'sourceUrl notes');
expect(Urls::sourceUrl('word') === 'https://studyguidemaker.net/from/word', 'sourceUrl word');
try { Urls::sourceUrl('not-listed'); expect(false, 'bad source'); } catch (InvalidArgumentException $e) {}
expect(Urls::audienceUrl('college-students') === 'https://studyguidemaker.net/for/college-students', 'audienceUrl college-students');
expect(Urls::audienceUrl('high-school') === 'https://studyguidemaker.net/for/high-school', 'audienceUrl high-school');
expect(Urls::audienceUrl('teachers') === 'https://studyguidemaker.net/for/teachers', 'audienceUrl teachers');
try { Urls::audienceUrl('not-listed'); expect(false, 'bad audience'); } catch (InvalidArgumentException $e) {}
expect(Urls::toolUrl('flashcard-maker') === 'https://studyguidemaker.net/tools/flashcard-maker', 'toolUrl flashcard-maker');
expect(Urls::toolUrl('quiz-generator') === 'https://studyguidemaker.net/tools/quiz-generator', 'toolUrl quiz-generator');
try { Urls::toolUrl('not-listed'); expect(false, 'bad tool'); } catch (InvalidArgumentException $e) {}
fwrite(STDOUT, "ok\n");
