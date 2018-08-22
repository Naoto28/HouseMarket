class RemoveUserIdFromPictures < ActiveRecord::Migration[5.1]
  def change
    remove_column :pictures, :user_id, :integer
    remove_column :pictures, :space_id, :integer
  end
end
