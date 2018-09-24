module ApplicationHelper

  def render_image_tag(image)
    image_tag(image) if image.attached?
  end

end
