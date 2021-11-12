class ChangeActionsToApiV1Actions < ActiveRecord::Migration[6.1]
  def change
    rename_table :actions, :api_v1_actions
  end
end
