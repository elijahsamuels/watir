class Plant < ApplicationRecord
	belongs_to :farm
	has_one :sensor
end
