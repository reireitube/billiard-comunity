class AddColumnUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :bowlard, :integer
    add_column :users, :your_pool, :string
  end
end
