class CreateVoyages < ActiveRecord::Migration[5.1]
  def change
    create_table :voyages do |t|
      t.integer :id
      t.string :destination
      t.integer :duree
      t.integer :budget
      t.text :recit

      t.timestamps
    end
  end
end
