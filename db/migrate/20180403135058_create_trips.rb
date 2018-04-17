class CreateTrips < ActiveRecord::Migration[5.1]
  def change
    create_table :trips do |t|
      t.integer :id
      t.string :goal
      t.integer :time
      t.integer :cost
      t.text :story
      t.references :user, foreign_key: true
      t.references :theme, foreign_key: true

      t.timestamps
    end
  end
end
