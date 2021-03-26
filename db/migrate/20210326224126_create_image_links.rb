class CreateImageLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :image_links do |t|
      t.string :image_link
    end
  end
end
