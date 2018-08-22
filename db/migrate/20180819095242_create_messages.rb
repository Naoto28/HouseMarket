class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :status
      t.text :content
      t.integer :from
      t.integer :to

      t.timestamps
    end
  end
end
