class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :user_id
      t.integer :rest_id

      t.timestamps
    end
  end
end
