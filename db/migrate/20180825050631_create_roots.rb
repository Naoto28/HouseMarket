class CreateRoots < ActiveRecord::Migration[5.1]
  def change
    create_table :roots do |t|

      t.timestamps
    end
  end
end
