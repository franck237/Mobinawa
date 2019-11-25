class CreateCountries < ActiveRecord::Migration[6.0]
  def change
    create_table :countries do |t|
      t.string :code
      t.string :name
      t.string :flag
      t.boolean :status
      t.integer :digit

      t.timestamps
    end
  end
end
