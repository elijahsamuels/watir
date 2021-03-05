# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# seed data




Farm.create!([
	{
		name: "Home",
	}
])
	
p "Created #{Farm.count} farm(s)"
	
Plant.create!([
	{
		name: "basil",
		height: "24",
		last_watered: "",
		last_watered_amount: "2",
		grow_zone: "2",
		notes: "some notes for this plant",
		planted_date: "",
		# farm_id: 1
	},
	{
		name: "tomato",
		height: "18",
		last_watered: "",
		last_watered_amount: "1",
		grow_zone: "5",
		notes: "some notes for this plant",
		planted_date: "",
		# farm_id: 1
	},

	{
		name: "cilantro",
		height: "10",
		last_watered: "",
		last_watered_amount: "3",
		grow_zone: "6",
		notes: "some notes for this plant",
		planted_date: "",
		# farm_id: 1
	}
])

p "Created #{Plant.count} plants"



Sensor.create!([
	{
		mac_address: "",
		sensor_type: "water",
		plant_id: 1,
	},
	{
		mac_address: "",
		sensor_type: "water",
		plant_id: 1,
	},
	{
		mac_address: "",
		sensor_type: "water",
		plant_id: 1,
	},
])
	
p "Created #{Sensor.count} sensors"
	
# byebug