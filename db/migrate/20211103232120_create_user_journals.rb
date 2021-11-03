class CreateUserJournals < ActiveRecord::Migration[6.1]
  def change
    create_table :user_journals do |t|
      t.integer :user_id
      t.integer :journal_id

      t.timestamps
    end
  end
end
