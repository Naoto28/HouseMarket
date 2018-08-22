class AddEstatesToComment < ActiveRecord::Migration[5.1]
  def change
    add_column :estates, :comment, :string
  end
end
