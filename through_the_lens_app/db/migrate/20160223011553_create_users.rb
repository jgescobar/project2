class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :location
      t.string :img

      t.timestamps null: false
    end
  end
end
