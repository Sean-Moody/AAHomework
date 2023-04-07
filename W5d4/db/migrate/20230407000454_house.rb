class House < ActiveRecord::Migration[7.0]
  def change
    validates :address, presence: true, uniqueness: true
    create_table :houses do |t|
      t.string :address

  end
end
