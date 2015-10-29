class ActivityUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :activity

  def multiply
    mult = self.activity.calories_per_min*self.duration
    return mult
  end

  def self.total_expend
    total = 0
    all.each do |activity_user|
      total += activity_user.multiply
    end
    return total
  end

end
