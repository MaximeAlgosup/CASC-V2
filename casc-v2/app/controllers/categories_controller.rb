class CategoriesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
    end

    def show
        @categories = Category.find(params[:id])
    end

    def new
        @category = Category.new
    end
    

    def create
        @category = Category.new(category_params)
        if @category.save
            redirect_to categories_path
        else
            render 'new'
        end
    end

    def edit
        @category = Category.find(params[:id])
    end
    
    def update
        @category = Category.find(params[:id])
        if @category.update(category_params)
            redirect_to category_path(@category)
        else
            render :edit
        end
    end

    def destroy
        @categories = Category.find(params["id"])
        
        if current_user.isAdmin
            @categories.destroy
            redirect_to categories_path
        else
            alert = "You are not authorized to delete this category."
            redirect_to categories_path, alert: alert
        end
    end

    private
    def category_params
        params.require(:category).permit(:title, :description)
    end
end
