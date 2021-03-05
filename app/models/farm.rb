class Farm < ApplicationRecord
	has_many :plants
	has_many :sensors, through: :plants
end
