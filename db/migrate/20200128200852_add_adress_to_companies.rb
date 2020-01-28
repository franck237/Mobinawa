class AddAdressToCompanies < ActiveRecord::Migration[6.0]
  def change
    add_reference :companies, :adress, null: false, foreign_key: true
  end
end
