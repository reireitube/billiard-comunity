class CreateHomes < ActiveRecord::Migration[6.0]
  def change
    create_table :homes do |t|
      
      t.string :todofukenn
      t.string :pool_hall
      t.datetime :schedule
      t.timestamps
    end
  end
end
