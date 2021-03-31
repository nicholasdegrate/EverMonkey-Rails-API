class Api::V1::AttachedFilesController < Api::V1::BaseController

    def index
        attached_files = AttachedFile.all
        render json: serialize_models(attached_files), status: :ok
    end

    def show
        attached_file = AttachedFile.find(params[:id])
        render json: serialize_model(attached_file), status: :ok
    end


    def create

        attached_file = AttachedFile.find_or_create_by(attached_file_params)

        if attached_file.save
            render json: serialize_model(attached_file)
        else
            render json: serialize_model_error(attached_file.errors)
        end
    end

    private

        def attached_file_params
            # require !==
            params.require(:attached_file).permit(:name, :note_id, :file)
        end

end
