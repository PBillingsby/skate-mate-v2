class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :spot_id
      t.integer :user_id
      t.float :rating
      t.text :description
    end
  end
end
