class ChangeCategoriesToApiV1Categories < ActiveRecord::Migration[6.1]
  def change
    rename_table :categories, :api_v1_categories
  end
end
