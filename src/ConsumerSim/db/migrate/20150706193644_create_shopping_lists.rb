class CreateShoppingLists < ActiveRecord::Migration
  def change
    create_table :shopping_lists do |t|
      t.references :consumer, index: true, foreign_key: true
      t.text :list

      t.timestamps null: false
    end
  end
end
