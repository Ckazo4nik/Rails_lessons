class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      t.string :type
      t.belongs_to :train
      t.integer :up_place_count
      t.integer :down_place_count


      t.timestamps
    end
  end
end
