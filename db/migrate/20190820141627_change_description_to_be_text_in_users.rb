class ChangeDescriptionToBeTextInUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :description, :text
  end
end
