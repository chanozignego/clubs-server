# == Schema Information
#
# Table name: reservations
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  bookeable_id :integer
#  date         :datetime         not null
#  time_used    :decimal(, )
#  comments     :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  title        :string           default(""), not null
#  date_range   :string           default(""), not null
#  start        :datetime
#  end          :datetime
#  color        :string
#

require 'rails_helper'

RSpec.describe Reservation, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
