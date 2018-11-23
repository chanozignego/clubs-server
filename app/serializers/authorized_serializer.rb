class AuthorizedSerializer < ActiveModel::Serializer
  attributes :id, :name, :telephone, :dni, :date_in, :date_out, :description

  # def formatted_date
  #   "#{object.date.try(:strftime, '%d/%m/%Y %H:%M')}hs"
  # end
end