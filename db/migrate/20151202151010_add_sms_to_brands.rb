class AddSmsToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :sms, :string, null: false, default: "SMS"
  end
end
