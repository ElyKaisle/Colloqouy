class CreateForums < ActiveRecord::Migration[5.0]
  def change
    create_table :forums do |t|
      t.integer :topic_id

      t.timestamps
    end
  end
end
