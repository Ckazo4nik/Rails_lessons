class AddStationToTickets < ActiveRecord::Migration[5.1]
  def change
    change_table :tickets do |t|
      t.belongs_to :route
      t.string :first_name
      t.string :last_name
      t.remove :user_id

    end


  end
end
