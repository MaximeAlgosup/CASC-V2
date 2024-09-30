class DocumentationsController < ApplicationController

    private
    def documentation_params
        params.require(:documentation).permit(:title, :description)
    end

end