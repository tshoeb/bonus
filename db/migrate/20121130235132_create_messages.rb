class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :subject
      t.date :date_sent
      t.date :date_read
      t.string :body
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
