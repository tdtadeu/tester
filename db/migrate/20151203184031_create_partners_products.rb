class CreatePartnersProducts < ActiveRecord::Migration
  def change
    create_table :partners_products do |t|
      t.references :partner, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
    end
  end
end
