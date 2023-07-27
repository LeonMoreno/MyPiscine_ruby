class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :manufacturer
      t.string :design
      t.string :style

      t.timestamps
    end
  end
end
