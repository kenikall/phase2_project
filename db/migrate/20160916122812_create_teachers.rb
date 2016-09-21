class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_hash
      t.string :title
      t.boolean :promo_emails

      t.timestamps null: false
    end
  end
end
