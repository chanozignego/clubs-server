# == Schema Information
#
# Table name: authorizeds
#
#  id          :integer          not null, primary key
#  name        :string           default(""), not null
#  telephone   :string           default(""), not null
#  dni         :string           default(""), not null
#  user_id     :integer
#  date_in     :datetime
#  date_out    :datetime
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Authorized, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
