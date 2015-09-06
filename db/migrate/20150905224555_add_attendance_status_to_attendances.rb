class AddAttendanceStatusToAttendances < ActiveRecord::Migration
  def change
    add_column :attendances, :attendance_status, :text
  end
end
