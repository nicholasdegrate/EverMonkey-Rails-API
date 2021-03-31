class Note < ApplicationRecord
  belongs_to :note_book
  has_many :attached_files
end
