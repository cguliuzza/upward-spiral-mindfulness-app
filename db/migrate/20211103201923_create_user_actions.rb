class CreateUserActions < ActiveRecord::Migration[6.1]
  def change
    create_table :user_actions do |t|
      t.boolean :favorite
      t.boolean :dislike
      t.integer :user_id
      t.integer :action_id
      t.integer :journal_id
      t.integer :category_id

      t.timestamps
    end
  end
end
