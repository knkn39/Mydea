class AddImageToNotes < ActiveRecord::Migration[7.1]
  def change
    add_column :notes, :image, :string
  end
end
