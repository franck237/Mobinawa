class CreateSubSectors < ActiveRecord::Migration[6.0]
  def change
    create_table :sub_sectors do |t|
      t.string :name
      t.references :sector, null: false, foreign_key: true

      t.timestamps
    end
  end
end
