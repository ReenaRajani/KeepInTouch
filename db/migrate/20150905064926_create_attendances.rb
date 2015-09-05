class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
       t.integer :employee_id
       t.integer :event_id
       t.string :attendance_type
      t.timestamps null: false
    end
  end
end
