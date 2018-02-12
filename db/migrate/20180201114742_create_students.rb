class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :patronus
      t.string :quote
      t.string :image_url
      t.integer :house_id

      t.timestamps
    end
  end
end
