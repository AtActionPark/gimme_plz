module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Gimme $ plz"
    if page_title.empty?
      base_title
    else
      base_title + " | " + page_title
    end
  end

 def markdown(text)
  markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML,
      no_intra_emphasis: true, 
      fenced_code_blocks: true,   
      disable_indented_code_blocks: true)
    return markdown.render(text).html_safe
  end

end
