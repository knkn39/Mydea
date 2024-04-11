class AddSeachToNotes < ActiveRecord::Migration[7.1]
  def change
    add_column :notes, :search, :string
  end
end
