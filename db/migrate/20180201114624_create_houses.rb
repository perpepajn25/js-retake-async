class CreateHouses < ActiveRecord::Migration[5.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :head
      t.string :trait
      t.integer :points, :default => 0
      t.string :image_url

      t.timestamps
    end
  end
end
