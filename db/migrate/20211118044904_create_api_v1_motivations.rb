class CreateApiV1Motivations < ActiveRecord::Migration[6.1]
  def change
    create_table :api_v1_motivations do |t|
      t.text :text
      t.string :author
      t.integer :likes, default: 0

      t.timestamps
    end
  end
end
