# @Author: Ismael Hadj
# @Date:   2018-05-21T10:46:10+02:00
# @Email:  Ismael.hadj13@yahoo.com
# @Last modified by:   Ismael Hadj
# @Last modified time: 2018-05-21T14:53:25+02:00



class CreateTravels < ActiveRecord::Migration[5.1]
  def change
    create_table :travels do |t|
      t.string :title
      t.string :destination
      t.string :duration
      t.string :deal
      t.string :story
      t.string :narrative
      t.references :topic, foreign_key: true
      t.integer :like
      t.timestamps
    end
  end
end
