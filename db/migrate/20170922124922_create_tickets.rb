class CreateTickets < ActiveRecord::Migration[5.1]
  def up
    drop_table :tickets
    create_table :tickets do |t|
      t.belongs_to :train
      t.belongs_to :user
      t.timestamps
    end
  end
end
