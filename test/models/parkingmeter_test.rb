# == Schema Information
#
# Table name: parkingmeters
#
#  id         :bigint(8)        not null, primary key
#  name       :string           not null
#  longitude  :float            not null
#  latitude   :float            not null
#  status     :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ParkingmeterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
