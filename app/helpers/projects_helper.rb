module ProjectsHelper

  def picture_for_project(project, options = { size: 80 })
    picture = project.picture
    size = options[:size]
    image_tag(picture, width: size,  alt: project.title)
  end
end
