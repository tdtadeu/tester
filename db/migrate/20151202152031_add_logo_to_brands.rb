class AddLogoToBrands < ActiveRecord::Migration
  def change
    add_column :brands, :logo_uid, :string
    add_column :brands, :logo_name, :string
  end
end
