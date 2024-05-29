class AddCoordinatesToElves < ActiveRecord::Migration[7.1]
  def change
    add_column :elves, :latitude, :float
    add_column :elves, :longitude, :float
    add_column :elves, :address, :string
  end
end
