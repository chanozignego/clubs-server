class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :date, :formatted_date, :place

  def formatted_date
    "#{object.date.try(:strftime, '%d/%m/%Y %H:%M')}hs"
  end
end
