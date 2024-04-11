class AddNameToUis < ActiveRecord::Migration[7.1]
  def change
    add_column :uis, :name, :string
  end
end
