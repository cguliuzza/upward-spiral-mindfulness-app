class CreateActions < ActiveRecord::Migration[6.1]
  def change
    create_table :actions do |t|
      t.string :name
      t.string :description
      t.integer :minutes

      t.timestamps
    end
  end
end
