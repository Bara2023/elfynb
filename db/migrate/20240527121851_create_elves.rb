class CreateElves < ActiveRecord::Migration[7.1]
  def change
    create_table :elves do |t|
      t.string :name
      t.string :category
      t.integer :daily_price
      t.integer :age
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
