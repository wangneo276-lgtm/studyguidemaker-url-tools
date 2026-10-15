local M = {}
local BASE = "https://studyguidemaker.net"
local PAGES = { ["pricing"]="/pricing", ["blog"]="/blog" }

function M.home_url()
  return BASE .. "/"
end

function M.page_url(name)
  local path = PAGES[name]
  if not path then error("unknown page: " .. tostring(name)) end
  return BASE .. path
end

function M.source_url(slug)
  local allowed = { "pdf", "powerpoint", "notes", "word" }
  local ok = false
  for _, item in ipairs(allowed) do if item == slug then ok = true end end
  if not ok then error("unknown source_url: " .. tostring(slug)) end
  return BASE .. "/from/" .. slug .. ""
end
function M.audience_url(slug)
  local allowed = { "college-students", "high-school", "teachers" }
  local ok = false
  for _, item in ipairs(allowed) do if item == slug then ok = true end end
  if not ok then error("unknown audience_url: " .. tostring(slug)) end
  return BASE .. "/for/" .. slug .. ""
end
function M.tool_url(slug)
  local allowed = { "flashcard-maker", "quiz-generator" }
  local ok = false
  for _, item in ipairs(allowed) do if item == slug then ok = true end end
  if not ok then error("unknown tool_url: " .. tostring(slug)) end
  return BASE .. "/tools/" .. slug .. ""
end
return M
