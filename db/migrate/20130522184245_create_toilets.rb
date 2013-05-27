class CreateToilets < ActiveRecord::Migration
  def change
    create_table :toilets do |t|
      t.string :name
      t.integer :score
      t.float :cost
      t.string :imgurl
      t.float :lat, :lng, :scale => 6
      
      t.timestamps
    end
  end
end
