class CreateHeadphones < ActiveRecord::Migration
  def change
    create_table :headphones do |t|
      t.string :brand
      t.string :model
      t.integer :rating

      t.timestamps
    end
  end
end
