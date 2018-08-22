class AddPrefectureIdToEstates < ActiveRecord::Migration[5.1]
  def change
    add_column :estates, :prefecture_id, :integer
  end
end
