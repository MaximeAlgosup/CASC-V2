class CascNewsController < ApplicationController
    
    def show
        @casc_news = CascNew.find(params[:id])
    end

    def new
        @casc_news = CascNew.new
    end

    def create
        @casc_news = CascNew.new(casc_news_params)
        @casc_news.user = current_user
        if @casc_news.save
            redirect_to casc_news_path(@casc_news)
        else
            render 'new'
        end
    end

    def edit
        @casc_news = CascNew.find(params[:id])
        unless current_user.id == @casc_news.user.id
            alert = "You are not authorized to view this page."
            redirect_to root_path, alert: alert
        end
    end

    def update
        @casc_news = CascNew.find(params[:id])
        if @casc_news.update(casc_news_params)
            redirect_to casc_news_path(@casc_news)
        else
            render 'edit'
        end
    end

    def destroy
        @casc_news = CascNew.find(params["id"])
        oldPath = params["path"]
        
        if current_user.isAdmin
            @casc_news.destroy
            redirect_to "#{root_path}#{oldPath}"
        else
            alert = "You are not authorized to delete this news."
            redirect_to "#{root_path}#{oldPath}", alert: alert
        end
    end

    private

    def casc_news_params
        params.require(:casc_news).permit(:title, :content, :nType, )
    end
end
