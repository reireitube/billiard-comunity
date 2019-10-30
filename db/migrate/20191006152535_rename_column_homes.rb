class RenameColumnHomes < ActiveRecord::Migration[6.0]
  def change
    rename_column :homes, :schedule, :published_at
  end
end
