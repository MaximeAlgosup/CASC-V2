class UsersController < ApplicationController
    def show 
        unless current_user.id == params[:id].to_i
            alert = "You are not authorized to view this page."
            redirect_to root_path, alert: alert
        end
        @user = User.find(params[:id])
    end

    def edit
        unless current_user.id == params[:id].to_i
            @alert = "You are not authorized to view this page."
            redirect_to root_path, alert: alert
        end
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            @notice = "User updated successfully."
            redirect_to user_path(@user)
        else
            render 'edit'
        end
    end

    def destroy
        @user = User.find(params[:id])
        if current_user.isAdmin
            @user.destroy
            redirect_to root_path
        else
            alert = "You are not authorized to delete this user."
            redirect_to root_path, alert: alert
        end
    end



    private

    def user_params
        params.require(:user).permit(:name, :description)
    end
end
