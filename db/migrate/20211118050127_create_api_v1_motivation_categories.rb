class CreateApiV1MotivationCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_motivation_categories do |t|
      t.integer :motivation_id
      t.integer :category_id

      t.timestamps
    end
  end
end
