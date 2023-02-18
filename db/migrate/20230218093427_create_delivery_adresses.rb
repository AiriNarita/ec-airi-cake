class CreateDeliveryAdresses < ActiveRecord::Migration[6.1]
  def change
    create_table :delivery_adresses do |t|
      t.integer  :customer_id, null:false
      t.string   :postal_code, null:false
      t.string   :address, null:false
      t.string   :addressee, null:false


      t.timestamps
    end
  end
end
