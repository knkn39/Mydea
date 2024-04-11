class CreateNoteTagRelations < ActiveRecord::Migration[7.1]
  def change
    create_table :note_tag_relations do |t|
      t.references :note, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
