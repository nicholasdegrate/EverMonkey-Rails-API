class Api::V1::UsersController < Api::V1::BaseController

    def index
        users = User.all
        render json: serialize_models(users), status: :ok
    end

    def show
        user = User.find(params[:id])
        render json: serialize_model(user, include: ['note-books', 'note-books.notes', 'note-books.notes.attached-files']), status: :ok
    end

    def create

        user = User.find_or_create_by(user_params)

        if user.save
            render json: serialize_model(user)
        else
            render json: serialize_model_error(user.errors)
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: serialize_model(user), status: :ok
    end


    private

        def user_params
            # require !==
            params.require(:user).permit(:username, :email, :profile_image)
        end
end
