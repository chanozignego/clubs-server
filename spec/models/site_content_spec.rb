# == Schema Information
#
# Table name: site_contents
#
#  id           :integer          not null, primary key
#  tag          :string
#  name         :string
#  content_type :integer
#  file         :string
#  text         :text
#  description  :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'rails_helper'

RSpec.describe SiteContent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
