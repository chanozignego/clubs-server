class BookeableSerializer < ActiveModel::Serializer
  attributes :id, :title, :eventColor, :bookeable_type

  def title
    object.name
  end

  def eventColor
    "##{Random.new.bytes(3).unpack("H*")[0]}"
  end 


end