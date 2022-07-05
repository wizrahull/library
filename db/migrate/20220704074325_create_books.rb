class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :book_name
      t.integer :pages
      t.integer :year

      t.timestamps
    end
  end
end
