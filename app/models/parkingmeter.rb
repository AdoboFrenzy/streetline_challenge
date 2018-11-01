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

class Parkingmeter < ApplicationRecord

    validates :name, :longitude, :latitude, :status, :color, :height, presence: true


end
