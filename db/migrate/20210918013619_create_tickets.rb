class CreateTickets < ActiveRecord::Migration[6.1]
  def change
    create_table :tickets do |t|
      t.datetime :appt_datetime
      t.string :course
      t.references :user, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
