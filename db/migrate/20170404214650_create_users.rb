class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :username
      t.text :password_digest
      t.text :name
    end
  end
end
