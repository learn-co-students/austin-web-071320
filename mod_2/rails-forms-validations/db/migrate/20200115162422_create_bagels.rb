class CreateBagels < ActiveRecord::Migration[6.0]
  def change
    create_table :bagels do |t|
      t.string :name
      t.string :flavor
      t.integer :price

      t.timestamps
    end
  end
end
