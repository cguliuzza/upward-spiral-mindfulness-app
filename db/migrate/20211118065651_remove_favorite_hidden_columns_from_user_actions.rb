class RemoveFavoriteHiddenColumnsFromUserActions < ActiveRecord::Migration[6.1]
  def change
    remove_column :api_v1_user_actions, :favorite
    remove_column :api_v1_user_actions, :hidden
  end
end
