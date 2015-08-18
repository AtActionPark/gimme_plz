module UsersHelper

  def picture_for(user, options = { size: 80 })
    picture = user.picture 
    size = options[:size]
    image_tag(picture, width: size, height: size, alt: user.name)
  end

end
