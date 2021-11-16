class RenameColumnFromUserActions < ActiveRecord::Migration[6.1]
  def change
    rename_column :api_v1_user_actions, :dislike, :hidden
  end
end
