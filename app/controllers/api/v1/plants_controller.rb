class Api::V1::PlantsController < ApplicationController

	def index
		plants = Plant.all
		render json: Plant.arr_to_json
	end

	def create
		plant = Plant.new(plant_params)
		if plant.save
			Sensor.create(sensor_type: params[:sensor], mac_address: params[:mac_address], plant_id: plant.id) 
			render json: plant, status: :accepted
		else
			render json: {errors: plant.errors.full_messages}, status: :unprocessible_entity
		end
	end
	
	def update
		plant = Plant.find_by(id: params[:id])
		plant.update(plant_params)
		# plant.farm.name = plant_params[:farm][:name]
		render json: plant, status: :accepted

	end
	
	
	def destroy
		plant = Plant.find_by(id: params[:id])
		plant.destroy
	end

		
	private
		
		def plant_params
			params.require(:plant).permit(
				:name,
				:height,
				:last_watered,
				:last_watered_amount,
				:grow_zone,
				:notes,
				:planted_date,
				:farm_id,
				:created_at,
				:updated_at,
				:sensor, 
				# farm: (
				# 	:name
				# 	)
				)
		end

end
