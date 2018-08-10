class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :user_name, :string
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :profile_image_id, :text
    add_column :users, :tell_number, :string
    add_column :users, :admin, :boolean
    add_column :users, :birthday, :date
    add_column :users, :living_city, :string
    add_column :users, :address, :text
    add_column :users, :introduction, :text
    add_column :users, :deleted_at, :datetime
    add_column :users, :prefecture_id, :integer
  end
end
