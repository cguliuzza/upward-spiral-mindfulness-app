class ChangeUserActionsToApiV1UserActions < ActiveRecord::Migration[6.1]
  def change
    rename_table :user_actions, :api_v1_user_actions
  end
end
