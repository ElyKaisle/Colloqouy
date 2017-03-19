class AddColumnsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :age, :integer
    add_column :users, :department, :string
    add_column :users, :college, :string
  end
end
