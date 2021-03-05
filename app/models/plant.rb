class Plant < ApplicationRecord
	belongs_to :farm, optional: true
	has_one :sensor
end
