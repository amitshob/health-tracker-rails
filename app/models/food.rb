class Food < ActiveRecord::Base
  validates_presence_of :food_item, :calories

  has_many :users, through: :foods_users
  has_many :foods_users

  # def self.array
  #   activities_array = []
  #   Activity.all.each do |activity|
  #     activities_array.push([activity.activity, activity.id])
  #   end
  #   activities_array
  # end
end
