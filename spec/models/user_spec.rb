require 'rails_helper'

RSpec.describe User, type: :model do

  it { should validate_uniqueness_of :username }
  it { should validate_presence_of :username }
  it { should validate_presence_of :dob }
  it { should validate_presence_of :gender }
  it { should validate_presence_of :weight }
  it { should validate_presence_of :height }
  it { should have_many :activities }
  it { should have_many :activity_users }
end
