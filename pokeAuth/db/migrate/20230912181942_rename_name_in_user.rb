class RenameNameInUser < ActiveRecord::Migration[7.0]
  def change
    rename_column :users, :emails, :email
  end
end
