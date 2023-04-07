class Person < ActiveRecord::Migration[7.0]
  def change
    create_table :residents do |t|
      t.string :name
      t.string :house_id
  end
  add_index :residents
end
