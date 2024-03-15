class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :tile
      t.string :author
      t.integer :pages_count
      t.text :comments
      t.string :isbn

      t.timestamps
    end
  end
end
