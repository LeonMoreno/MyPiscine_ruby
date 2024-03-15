class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :emails
      t.string :name
      t.string :auth_token

      t.timestamps
    end
  end
end
