class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :formatted_date, :place, :image

  def image
    picture = object.try(:image)
    if ENV["APP_HOST"].present? && picture.present? 
      ENV["APP_HOST"] + picture.thumb.try(:url)
    else
      "http://localhost:3000#{picture.try(:thumb).try(:url)}"
    end
  end

  def formatted_date
    "#{object.date.try(:strftime, '%d/%m/%Y %H:%M')}hs"
  end
end
