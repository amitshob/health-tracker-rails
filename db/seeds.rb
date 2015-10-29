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
  ["Cycling, >20 mph, racing", 1.5]
]

activities.each do |activity, cpm|
  Activity.create(activity: activity, calories_per_min: cpm)
end

foods = [
  ["Banana", 105],
  ["Yogurt 1 cup", 232],
  ["Rice", 235]
]

foods.each do |food, calories|
  Food.create(activity: food_item, calories: calories)
end
