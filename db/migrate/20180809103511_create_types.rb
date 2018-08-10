class CreateTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :types do |t|
      t.string :name
      t.integer :estate_id
      t.integer :space_id

      t.timestamps
    end
  end
end
