class UsersController < ApplicationController
    def show 
        unless current_user.id == params[:id].to_i
            alert = "You are not authorized to view this page."
            redirect_to root_path, alert: alert
        end
        @user = User.find(params[:id])
    end
end
