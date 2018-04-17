class CreateThemes < ActiveRecord::Migration[5.1]
  def change
    create_table :themes do |t|
      t.integer :id
      t.string :name
      t.string :genre

      t.timestamps
    end
  end
end
