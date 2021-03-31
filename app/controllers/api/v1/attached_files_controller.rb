class Api::V1::AttachedFilesController < Api::V1::BaseController

    def index
        attached_files = AttachedFile.all
        render json: serialize_models(attached_files), status: :ok
    end

    def show
        attached_file = AttachedFile.find(params[:id])
        render json: serialize_model(attached_file), status: :ok
    end

end
