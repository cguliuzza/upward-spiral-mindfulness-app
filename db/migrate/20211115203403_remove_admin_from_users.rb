class RemoveAdminFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :api_v1_users, :admin
  end
end
