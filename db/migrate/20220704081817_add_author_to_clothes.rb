class AddAuthorToClothes < ActiveRecord::Migration[7.0]
  def change
    add_reference :clothes, :author
  end
end
