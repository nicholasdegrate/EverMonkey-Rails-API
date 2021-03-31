class CreateAttachedFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :attached_files do |t|
      t.string :file
      t.belongs_to :note
      t.string :name

      t.timestamps
    end
  end
end
