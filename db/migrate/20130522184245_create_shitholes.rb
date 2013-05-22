class CreateShitholes < ActiveRecord::Migration
  def change
    create_table :shitholes do |t|
      t.string :name
      t.integer :score
      t.float :cost
      t.string :imgurl
      t.float :lat, :lng, :scale => 3
      
      t.timestamps
    end
  end
end
