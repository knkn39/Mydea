class CreateUis < ActiveRecord::Migration[7.1]
  def change
    create_table :uis do |t|

      t.timestamps
    end
  end
end
