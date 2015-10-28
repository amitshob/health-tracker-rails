require 'rails_helper'

describe "successful sign up" do
  it "adds a user" do
    visit root_path
    within(".signup") do
      fill_in 'Email', :with => 'a@gmail.com'
      fill_in 'Password', :with => 'password'
    end
    fill_in 'Password confirmation', :with => 'password'
    select('male', :from => 'Gender')
    select '2015', from: 'user_dob_1i'
    select 'March', from: 'user_dob_2i'
    select '20', from: 'user_dob_3i'
    fill_in 'Weight', :with => 132
    fill_in 'Height', :with => 69
    fill_in 'Username', :with => 'amit'
    click_on 'Sign up'
    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end

describe "successful login" do
  it "Logs a user in" do
    User.create(email: 'a@gmail.com', password:"password", password_confirmation:"password", username: "a", weight:"4", height:"4", dob: Date.new, gender:"male")
    visit root_path
    within(".login") do
      fill_in 'Email', :with => 'a@gmail.com'
      fill_in 'Password', :with => 'password'
    end
    click_on 'Sign in'
    expect(page).to have_content 'Signed in successfully.'
  end
end
