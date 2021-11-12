class ChangeActionCategoriesToApiV1ActionCategories < ActiveRecord::Migration[6.1]
  def change
    rename_table :action_categories, :api_v1_action_categories
  end
end
