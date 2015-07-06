class CreateConsumers < ActiveRecord::Migration
  def change
    create_table :consumers do |t|
      t.integer :budget
      t.integer :save_rate

      t.timestamps null: false
    end
  end
end
