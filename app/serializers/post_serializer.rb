class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :state, :summary, :body, :author, :principal_image, :date

  def principal_image
    picture = object.try(:principal_image)
    if ENV["APP_HOST"].present? && picture.present? 
      ENV["APP_HOST"] + picture.thumb.try(:url)
    else
      "http://localhost:3000#{picture.try(:thumb).try(:url)}"
    end
  end

end
