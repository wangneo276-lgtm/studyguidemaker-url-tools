module StudyguidemakerUrlTools
  BASE = "https://studyguidemaker.net"
  PAGES = { "pricing" => "/pricing", "blog" => "/blog" }
  def self.home_url
    BASE + "/"
  end

  def self.page_url(name)
    path = PAGES[name]
    raise ArgumentError, "unknown page: #{name}" if path.nil?
    BASE + path
  end

  def self.source_url(slug)
    allowed = ["pdf", "powerpoint", "notes", "word"]
    raise ArgumentError, "unknown source_url: #{slug}" unless allowed.include?(slug)
    BASE + "/from/" + slug + ""
  end
  def self.audience_url(slug)
    allowed = ["college-students", "high-school", "teachers"]
    raise ArgumentError, "unknown audience_url: #{slug}" unless allowed.include?(slug)
    BASE + "/for/" + slug + ""
  end
  def self.tool_url(slug)
    allowed = ["flashcard-maker", "quiz-generator"]
    raise ArgumentError, "unknown tool_url: #{slug}" unless allowed.include?(slug)
    BASE + "/tools/" + slug + ""
  end
end
