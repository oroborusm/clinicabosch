class AddTelefonoToForms < ActiveRecord::Migration
  def change
    add_column :forms, :telefono, :string
  end
end
