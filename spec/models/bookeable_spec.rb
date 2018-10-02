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

require 'rails_helper'

RSpec.describe Bookeable, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
