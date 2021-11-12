class ChangeUsersToApiV1Users < ActiveRecord::Migration[6.1]
  def change
    rename_table :users, :api_v1_users
  end
end
