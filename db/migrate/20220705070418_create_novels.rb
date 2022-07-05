class CreateNovels < ActiveRecord::Migration[7.0]
  def change
    create_table :novels do |t|
      t.string :name
      t.integer :pages
      t.references :author, null: false, foreign_key: true

      t.timestamps
    end
  end
end
