class CascNewsController < ApplicationController
    before_action :authenticate_user!

    def index
    end

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
            redirect_to casc_news_path
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
            @casc_news.user = current_user
            redirect_to casc_news_path(@casc_news)
        else
            render 'edit'
        end
    end

    def destroy
        @casc_news = CascNew.find(params["id"])
        
        if current_user.isAdmin
            @casc_news.destroy
            redirect_to casc_news_path
        else
            alert = "You are not authorized to delete this news."
            redirect_to casc_news_path, alert: alert
        end
    end

    private

    def casc_news_params
        params.require(:casc_new).permit(:title, :content, :nType, )
    end
end
