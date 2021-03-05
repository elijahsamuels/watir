class Sensor < ApplicationRecord
	belongs_to :plant
	belongs_to :farm

end
