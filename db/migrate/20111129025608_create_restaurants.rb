class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :addr
      t.string :city
      t.string :state
      t.string :phone
      t.string :type
      t.string :wsite

      t.timestamps
    end
  end
end
