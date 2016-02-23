class CreateShares < ActiveRecord::Migration
  def change
    create_table :shares do |t|
      t.string :link
      t.string :title
      t.text :description
      t.string :category
      t.string :artist
      t.string :length
      t.string :address
      t.string :album

      t.timestamps null: false
    end
  end
end
