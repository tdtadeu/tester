class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :sku
      t.decimal :value, scale: 2, precision: 10

      t.timestamps null: false
    end
  end
end
