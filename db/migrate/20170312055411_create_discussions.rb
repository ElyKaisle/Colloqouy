class CreateDiscussions < ActiveRecord::Migration[5.0]
  def change
    create_table :discussions do |t|
      t.string :topic_name
      t.string :topic_description

      t.timestamps
    end
  end
end
