class CreatePrompts < ActiveRecord::Migration
  def change
    create_table :prompts do |t|
      t.string :title, null: false
      t.text :optional
      t.integer :creator_id, null: false

      t.timestamps null: false
    end
  end
end
