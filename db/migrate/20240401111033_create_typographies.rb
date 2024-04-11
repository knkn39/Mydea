class CreateTypographies < ActiveRecord::Migration[7.1]
  def change
    create_table :typographies do |t|

      t.timestamps
    end
  end
end
