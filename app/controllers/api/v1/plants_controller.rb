class Api::V1::PlantsController < ApplicationController

	def index
		# byebug
		plants = Plant.all
		render json: Plant.arr_to_json
		# render json: plants
		# render json: PlantSerializer.new(plants)
	end

	def create
		plant = Plant.new(plant_params)
		if plant.save
			render json: plant, status: :accepted
		else
			render json: {errors: plant.errors.full_messages}, status: :unprocessible_entity
		end
	end
	
	private
	def plant_params
		params.require(plant).permit(:name, :height, :last_watered, :last_watered_amount, :grow_zone, :notes, :planted_date, :farm_id, :created_at, :updated_at)
	end

end