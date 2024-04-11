class AddNameToGraphics < ActiveRecord::Migration[7.1]
  def change
    add_column :graphics, :name, :string
  end
end
