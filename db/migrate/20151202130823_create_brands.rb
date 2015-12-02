class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name, null: false, default: "banana"

      t.timestamps null: false
    end

    add_index :brands, :name, unique: true
  end
end
