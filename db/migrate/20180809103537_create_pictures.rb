class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.text :picture_id
      t.integer :user_id
      t.integer :estate_id
      t.integer :space_id

      t.timestamps
    end
  end
end
