# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
activities = [
  ["Cycling, mountain bike, bmx", 1],
  ["Cycling, <10 mph, leisure bicycling", 0.3],
  ["Cycling, >20 mph, racing", 1.5],
  ["Running, 3-5 mph, slow jog", 115],
  ["Running, 5-7 mph, run", 95],
  ["Running, 7-10 mph, slow jog", 87],
  ["House M.D marathon", 1],
  ["Arguing", 150],
  ["Silent treatment", 87],
  ["Hopping", 100]
]

activities.each do |activity, cpm|
  Activity.create(activity: activity, calories_per_min: cpm)
end

foods = [
  ["Banana", 105],
  ["Yogurt 1 cup", 232],
  ["Rice", 235]
]

foods.each do |food_item, calories|
  Food.create(food_item: food_item, calories: calories)
end
