class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :logo_uid
      t.string :logo_name
      t.string :url
      t.string :partner_type
      t.string :stock_type
      t.references :brand, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
