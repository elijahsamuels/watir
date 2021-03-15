class Plant < ApplicationRecord
	belongs_to :farm
	has_many :sensor

	validates :name, presence: true

	#class method that handles array of plants
	def self.arr_to_json
		self.all.map do |data|
			data.instance_to_json
		end 
	end 

	# instance method that handles one specific plant

	def instance_to_json
		{
			id: self.id,
			name: self.name,
			height: self.height,
			last_watered: self.last_watered,
			last_watered_amount: self.last_watered_amount,
			grow_zone: self.grow_zone,
			notes: self.notes,
			planted_date: self.planted_date,
			farm: self.farm,	
			sensor: self.sensor
			# farm: { 
			# 	farm: self.farm.name,
			# 	farm: self.farm.id,
			# },
			}
	end 
	

end
