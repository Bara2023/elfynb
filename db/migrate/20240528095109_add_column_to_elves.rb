class AddColumnToElves < ActiveRecord::Migration[7.1]
  def change
    add_column :elves, :description, :text
  end
end
