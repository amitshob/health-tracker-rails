class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :activities, through: :activity_users
  has_many :activity_users

  has_many :foods, through: :food_users
  has_many :food_users

  validates_uniqueness_of :username
  validates_presence_of :username, :gender, :dob, :weight, :height
end
