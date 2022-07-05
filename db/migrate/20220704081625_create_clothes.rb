class CreateClothes < ActiveRecord::Migration[7.0]
  def change
    create_table :clothes do |t|
      t.string :cloth
      t.string :color

      t.timestamps
    end
  end
end
