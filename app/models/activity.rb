class Activity < ActiveRecord::Base
  validates_presence_of :activity, :calories_per_min

  has_many :users, through: :activity_users
  has_many :activity_users

  def self.array
    activities_array = []
    Activity.all.each do |activity|
      activities_array.push([activity.activity, activity.id])
    end
    activities_array
  end
end
