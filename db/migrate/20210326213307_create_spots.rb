class CreateSpots < ActiveRecord::Migration[6.0]
  def change
    create_table :spots do |t|
      t.integer :user_id
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :country
      t.float :longitude
      t.float :latitude
    end
  end
end
