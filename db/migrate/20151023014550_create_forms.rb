class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :nombre
      t.string :email

      t.timestamps null: false
    end
  end
end
