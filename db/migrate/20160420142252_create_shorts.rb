class CreateShorts < ActiveRecord::Migration
  def change
    create_table :shorts do |t|
      t.text    :body, null: false
      t.integer :creator_id, null: false
      t.references :prompt, null: false

      t.timestamps null: false
    end
  end
end
