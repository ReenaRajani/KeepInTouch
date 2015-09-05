class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :eventname
      t.datetime :eventdate
      t.datetime :eventstarttime
      t.datetime :eventendtime
      t.string :description
      t.string :string
      t.string :address
      t.string :additionalinfo
      t.string :attendanceoption
      t.string :invite

      t.timestamps null: false
    end
  end
end
