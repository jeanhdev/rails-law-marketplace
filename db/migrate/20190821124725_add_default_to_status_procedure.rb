class AddDefaultToStatusProcedure < ActiveRecord::Migration[5.2]
  def change
    change_column :procedures, :status, :string, default: "pending"
  end
end
