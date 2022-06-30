class UsersController < ApplicationController
    def index
        if params[:query]
            user = User
                .select('*')
                .where("username LIKE '%#{params[:query]}%'")
            
            render json: user
        else
            render json: User.all
        end
    end

    def create
        user = User.new(user_params)
        # replace the `user_attributes_here` with the actual attribute keys
        if user.save
            render json: user
        else
            render json: user.errors.full_messages, status: :unprocessable_entity
        end
      end

    def show
        render json: User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.delete
        render json: User.all
    end
    
    private
    def user_params
        params.require(:user).permit(:username)
    end

end