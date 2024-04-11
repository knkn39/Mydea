class AddTypographyIdToTypographies < ActiveRecord::Migration[7.1]
  def change
    add_column :typographies, :typography_id, :integer
  end
end
