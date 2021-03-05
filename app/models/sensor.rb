class Sensor < ApplicationRecord
	belongs_to :plant, optional: true
	belongs_to :farm, optional: true

end
