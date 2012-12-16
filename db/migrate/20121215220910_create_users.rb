class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :name
      t.string :contact_email
      t.string :contact_phone
      t.boolean :admin

      t.timestamps
    end
  end
end
