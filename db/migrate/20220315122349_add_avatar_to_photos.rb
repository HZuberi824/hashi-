class AddAvatarToPhotos < ActiveRecord::Migration[6.1]
  def change
    add_column :photos, :avatar, :string
  end
end
