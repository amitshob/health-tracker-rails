class ActivityUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :activity

  def multiply
    mult = self.activity.calories_per_min*self.duration
    return mult
  end

end
