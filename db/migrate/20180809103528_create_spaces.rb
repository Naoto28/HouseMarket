class CreateSpaces < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.string :name
      t.integer :price
      t.text :content
      t.integer :area
      t.integer :city_id
      t.integer :user_id
      t.integer :type_id
      t.datetime :deleted_at

      t.timestamps
    end
  end
end
