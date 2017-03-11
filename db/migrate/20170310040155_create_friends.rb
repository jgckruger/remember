class CreateFriends < ActiveRecord::Migration[5.0]
  def change
    create_table :friends do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :phone
      t.date :birthday

      t.timestamps
    end
  end
end
