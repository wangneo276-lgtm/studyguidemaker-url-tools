# studyguidemaker-url-tools

`studyguidemaker-url-tools` builds canonical HTTPS URLs for [Study Guide Maker](https://studyguidemaker.net/).

Offline URL builder for Study Guide Maker source, audience, flashcard, and quiz pages. Not an official SDK.

The helper only concatenates known page slugs. It does not call the site, upload files, or sign in.

## JavaScript

```js
import { pageUrl, pageUrl, sourceUrl, audienceUrl } from 'studyguidemaker-url-tools';

pageUrl('pricing'); // https://studyguidemaker.net/pricing
pageUrl('blog'); // https://studyguidemaker.net/blog
sourceUrl('pdf'); // https://studyguidemaker.net/from/pdf
audienceUrl('college-students'); // https://studyguidemaker.net/for/college-students
```

## Python

```python
from studyguidemaker_url_tools import page_url, page_url, source_url, audience_url

page_url('pricing')  # https://studyguidemaker.net/pricing
page_url('blog')  # https://studyguidemaker.net/blog
source_url('pdf')  # https://studyguidemaker.net/from/pdf
audience_url('college-students')  # https://studyguidemaker.net/for/college-students
```

The repository also contains equivalent Rust, PHP, and Go helpers, plus a small command that prints the same URLs.

Source: https://github.com/bbwdadfg/studyguidemaker-url-tools

License: MIT.
