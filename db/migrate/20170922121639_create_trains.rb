class CreateTrains < ActiveRecord::Migration[5.1]
  def up
    drop_table :trains

    create_table :trains do |t|
      t.string :number

      t.timestamps
    end
  end
end
