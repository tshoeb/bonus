class AddPhotoToProperty < ActiveRecord::Migration
  def change
    add_column :properties, :photo, :string
  end
end
