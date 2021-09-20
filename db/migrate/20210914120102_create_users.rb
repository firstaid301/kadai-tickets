class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.boolean :is_admin, null: false, default: false
      t.string :name
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
