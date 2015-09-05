class RemovestringFromEvent < ActiveRecord::Migration
  def change
    remove_column :events, :string
    
  end
end
