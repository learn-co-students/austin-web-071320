class CreateStoreProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :store_products do |t|
      t.integer :product_id
      t.integer :store_id
    end
  end
end
