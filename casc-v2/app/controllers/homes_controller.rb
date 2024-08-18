class HomesController < ApplicationController
    
        def index
                unless user_signed_in?
                        redirect_to new_user_session_path
                end        
        end

        def admin
                unless user_signed_in?
                        redirect_to new_user_session_path
                end

                unless current_user.isAdmin?
                        alert = "You are not authorized to access this page."
                        redirect_to root_path
                end
        end
end
