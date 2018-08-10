class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :estate_id
      t.integer :space_id

      t.timestamps
    end
  end
end
