class RemovestringFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :string
    remove_column :events, :attendanceoption
    remove_column :employees, :password_digest
    
  end
end
