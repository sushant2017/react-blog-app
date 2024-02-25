class AddColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :mobile_no, :string
    add_column :users, :user_name, :string
    add_column :users, :address, :string
  end
end
