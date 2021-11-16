class RemovePasswordFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :api_v1_users, :password
  end
end
