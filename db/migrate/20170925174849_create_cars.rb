class CreateCars < ActiveRecord::Migration[5.1]
  def up
    drop_table :cars
    create_table :cars do |t|
      t.string :tipe
      t.integer :up_place_count
      t.integer :down_place_count
      t.belongs_to :train, index: true

      t.timestamps
    end
  end
end
