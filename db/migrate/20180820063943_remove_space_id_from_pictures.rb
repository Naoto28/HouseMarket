class RemoveSpaceIdFromPictures < ActiveRecord::Migration[5.1]
  def change
    remove_column :pictures, :space, :integer
    remove_column :pictures, :user, :integer
  end
end
