<?php

declare(strict_types=1);

namespace StudyguidemakerUrlTools;

final class Urls
{
    private const BASE = 'https://studyguidemaker.net';

    /** @return array<string, mixed> */
    public static function metadata(): array
    {
        return [
            'name' => 'Study Guide Maker',
            'homepage' => self::homeUrl(),
            'description' => 'Offline URL builder for Study Guide Maker source, audience, flashcard, and quiz pages. Not an official SDK.',
            'canonicalPages' => array_merge(
                ['home' => self::homeUrl()],
                [
                    'pricing' => self::pageUrl('pricing'),
                    'blog' => self::pageUrl('blog'),
                ],
            ),
            'tags' => ['study', 'flashcards', 'url-builder'],
        ];
    }

    public static function homeUrl(): string
    {
        return self::BASE . '/';
    }

    public static function pageUrl(string $name): string
    {
        $pages = [
            'pricing' => '/pricing',
            'blog' => '/blog',
        ];
        if (!array_key_exists($name, $pages)) {
            throw new \InvalidArgumentException('unknown page: ' . $name);
        }
        return self::BASE . $pages[$name];
    }

    public static function sourceUrl(string $slug): string
    {
        $allowed = ['pdf', 'powerpoint', 'notes', 'word'];
        if (!in_array($slug, $allowed, true)) {
            throw new \InvalidArgumentException('unknown source: ' . $slug);
        }
        return self::BASE . '/from/' . $slug . '';
    }

    public static function audienceUrl(string $slug): string
    {
        $allowed = ['college-students', 'high-school', 'teachers'];
        if (!in_array($slug, $allowed, true)) {
            throw new \InvalidArgumentException('unknown audience: ' . $slug);
        }
        return self::BASE . '/for/' . $slug . '';
    }

    public static function toolUrl(string $slug): string
    {
        $allowed = ['flashcard-maker', 'quiz-generator'];
        if (!in_array($slug, $allowed, true)) {
            throw new \InvalidArgumentException('unknown tool: ' . $slug);
        }
        return self::BASE . '/tools/' . $slug . '';
    }

}
