class Sensor < ApplicationRecord
	belongs_to :plant, optional: true
end
