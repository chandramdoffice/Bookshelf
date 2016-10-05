class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :booktitle
      t.string :comments
      t.float :rating

      t.timestamps
    end
  end
end
