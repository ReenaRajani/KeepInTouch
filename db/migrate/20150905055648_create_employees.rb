class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :emp_name
      t.string :emp_type
      t.text :emp_email
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
