class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :number
      t.string :name
      t.string :email
      t.string :website
      t.string :logo
      t.text :description
      t.datetime :date
      t.integer :status
      t.references :sub_sector, null: false, foreign_key: true
      t.references :admin, null: false, foreign_key: true
      t.references :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
