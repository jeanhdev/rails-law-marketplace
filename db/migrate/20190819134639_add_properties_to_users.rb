class AddPropertiesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :avatar, :string
    add_column :users, :job, :string
    add_column :users, :specialty, :string
    add_column :users, :experience, :string
    add_column :users, :description, :string
    add_column :users, :address, :string
  end
end
