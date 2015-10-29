class Food < ActiveRecord::Base
  validates_presence_of :food_item, :calories

  has_many :users, through: :foods_users
  has_many :foods_users

  def self.array
    foods_array = []
    Food.all.each do |food|
      foods_array.push([food.food_item, food.id])
    end
    foods_array
  end
end
