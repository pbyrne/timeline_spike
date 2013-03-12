class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.string :action_type
      t.datetime :happened_at
      t.json :metadata

      t.timestamps
    end
  end
end
