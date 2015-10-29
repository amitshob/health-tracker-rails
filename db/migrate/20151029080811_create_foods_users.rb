class CreateFoodsUsers < ActiveRecord::Migration
  def change
    create_table :foods_users do |t|
      t.integer :food_id
      t.integer :user_id
      t.integer :duration

      t.timestamps null: false
    end
  end
end
