class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :gender, :string
    add_column :users, :weight, :integer
    add_column :users, :height, :integer
    add_column :users, :username, :string
    add_column :users, :dob, :date

  end
end
