class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :department
      t.string :college
      t.string :password
      t.string :repassword

      t.timestamps
    end
  end
end
