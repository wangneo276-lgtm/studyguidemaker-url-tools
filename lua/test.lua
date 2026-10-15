local M = require 'studyguidemaker_url_tools'
assert(M.home_url() == 'https://studyguidemaker.net/')
assert(M.page_url('pricing') == 'https://studyguidemaker.net/pricing')
assert(M.source_url('pdf') == 'https://studyguidemaker.net/from/pdf')
print('ok')
