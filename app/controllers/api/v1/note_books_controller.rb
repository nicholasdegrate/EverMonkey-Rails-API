class Api::V1::NoteBooksController < Api::V1::BaseController

    def index
        notes = Note.all
        render json: serialize_models(notes), status: :ok
    end
end
