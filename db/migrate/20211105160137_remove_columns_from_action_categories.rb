class RemoveColumnsFromActionCategories < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_actions, :journal_id, :integer
    remove_column :user_actions, :category_id, :integer
  end
end
