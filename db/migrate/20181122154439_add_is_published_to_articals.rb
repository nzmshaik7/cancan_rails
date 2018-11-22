class AddIsPublishedToArticals < ActiveRecord::Migration[5.0]
  def change
    add_column :articals, :is_published, :boolean, default: false
  end
end
