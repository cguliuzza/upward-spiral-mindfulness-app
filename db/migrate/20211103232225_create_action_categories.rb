class CreateActionCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :action_categories do |t|
      t.integer :action_id
      t.integer :category_id

      t.timestamps
    end
  end
end
