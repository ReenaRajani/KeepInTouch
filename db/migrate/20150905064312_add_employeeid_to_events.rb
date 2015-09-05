class AddEmployeeidToEvents < ActiveRecord::Migration
  def change
    add_column :events, :employee_id, :integer
  end
end
