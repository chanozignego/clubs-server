class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :resourceId, :start, :end, :title 

  def resourceId
    object.bookeable_id
  end

  def title
    object.user.try(:name)
  end

end