class CreateCartItems < ActiveRecord::Migration[6.1]
  def change
    create_table :cart_items do |t|
      t.string :quantity, null: false
      t.integer :product_id, foreign_key: true
      t.integer :custmer_id, foreign_key: true
      t.timestamps
    end
  end
end
