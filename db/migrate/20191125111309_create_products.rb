class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :image_product
      t.integer :quantity
      t.boolean :status
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
