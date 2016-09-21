class CreateStudents < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.integer :teacher_id

      t.timestamps null: false
    end
  end
end
