class ChangeGrievanceToBeTextInProcedure < ActiveRecord::Migration[5.2]
  def change
    change_column :procedures, :grievance, :text
  end
end
