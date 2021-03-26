class CreateImageLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :image_links do |t|
      t.integer :user_id
      t.integer :spot_id
      t.string :image_link
    end
  end
end
