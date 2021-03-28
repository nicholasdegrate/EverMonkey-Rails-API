class Api::V1::NoteBooksController < Api::V1::BaseController

    def index
        note_books = NoteBook.all
        render json: serialize_models(note_books), status: :ok
    end
end