class AddRenameColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :homes, :tel_number, :string
    add_column :homes, :address, :string
    rename_column :homes, :todofukenn, :prefecture
  end
end
