class ChangeDateFormatInMyTable < ActiveRecord::Migration
  
  def up
    change_column :events, :eventdate, :date
    change_column :events, :eventstarttime, :time
    change_column :events, :eventendtime, :time
  end

  def down
    change_column :events, :eventdate, :datetime
    change_column :events, :eventstarttime, :datetime
    change_column :events, :eventendtime, :datetime
  end

end
