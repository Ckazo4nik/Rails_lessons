class CreateUsers < ActiveRecord::Migration[5.1]
  def up
    drop_table :users

    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
