class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :id
      t.references :user, foreign_key: true
      t.references :travel, foreign_key: true

      t.timestamps
    end
  end
end
