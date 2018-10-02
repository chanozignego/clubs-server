# == Schema Information
#
# Table name: bookeables
#
#  id             :integer          not null, primary key
#  name           :string           default(""), not null
#  unit_price     :decimal(, )      default(1.0), not null
#  unit_time      :decimal(, )      default(1.0), not null
#  description    :string           default(""), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  bookeable_type :string
#

class BookeableSerializer < ActiveModel::Serializer
  attributes :id, :title, :eventColor, :bookeable_type

  def title
    object.name
  end

  def eventColor
    "##{Random.new.bytes(3).unpack("H*")[0]}"
  end 


end
