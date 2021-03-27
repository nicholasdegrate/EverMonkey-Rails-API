class CreateNoteBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :note_books do |t|
      t.string :name
      t.belongs_to :user
      t.boolean :delete_object

      t.timestamps
    end
  end
end
