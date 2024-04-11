class AddNameToTypographies < ActiveRecord::Migration[7.1]
  def change
    add_column :typographies, :name, :string
  end
end
