class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.integer :id
      t.string :url
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
