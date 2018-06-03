class AddPictureToTravels < ActiveRecord::Migration[5.1]
  def change
    add_column :travels, :photo, :string
  end
end
