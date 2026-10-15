import test from 'node:test';
import assert from 'node:assert/strict';
import { homeUrl, metadata, pageUrl, sourceUrl, audienceUrl, toolUrl } from './index.js';

test('metadata points at the live site', () => {
  const data = metadata();
  assert.equal(data.name, "Study Guide Maker");
  assert.equal(data.homepage, "https://studyguidemaker.net/");
  assert.equal(data.homepage.includes(' '), false);
});

test('page pricing', () => {
  assert.equal(pageUrl("pricing"), "https://studyguidemaker.net/pricing");
});

test('page blog', () => {
  assert.equal(pageUrl("blog"), "https://studyguidemaker.net/blog");
});

test('unknown page', () => {
  assert.throws(() => pageUrl('not-a-page'), /unknown page/);
});

test('sourceUrl', () => {
  assert.equal(sourceUrl("pdf"), "https://studyguidemaker.net/from/pdf");
  assert.equal(sourceUrl("powerpoint"), "https://studyguidemaker.net/from/powerpoint");
  assert.equal(sourceUrl("notes"), "https://studyguidemaker.net/from/notes");
  assert.equal(sourceUrl("word"), "https://studyguidemaker.net/from/word");
  assert.throws(() => sourceUrl('not-listed'), /unknown source/);
});

test('audienceUrl', () => {
  assert.equal(audienceUrl("college-students"), "https://studyguidemaker.net/for/college-students");
  assert.equal(audienceUrl("high-school"), "https://studyguidemaker.net/for/high-school");
  assert.equal(audienceUrl("teachers"), "https://studyguidemaker.net/for/teachers");
  assert.throws(() => audienceUrl('not-listed'), /unknown audience/);
});

test('toolUrl', () => {
  assert.equal(toolUrl("flashcard-maker"), "https://studyguidemaker.net/tools/flashcard-maker");
  assert.equal(toolUrl("quiz-generator"), "https://studyguidemaker.net/tools/quiz-generator");
  assert.throws(() => toolUrl('not-listed'), /unknown tool/);
});
