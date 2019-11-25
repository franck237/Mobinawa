class AddAttributesToAdmins < ActiveRecord::Migration[6.0]
  def change
    add_column :admins, :number, :string
    add_column :admins, :firstname, :string
    add_column :admins, :lastname, :string
    add_column :admins, :function, :string
    add_reference :admins, :country, null: false, foreign_key: true
  end
end
