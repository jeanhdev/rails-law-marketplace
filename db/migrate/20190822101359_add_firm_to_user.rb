class AddFirmToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firm, :string
  end
end
