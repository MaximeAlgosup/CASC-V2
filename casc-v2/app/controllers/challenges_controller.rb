class ChallengesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
    end

    def show
        @challenge = Challenge.find(params[:id])
    end

    def new
        @challenge = Challenge.new
    end
    

    def create
        puts "Create challenge"
        puts challenge_params.inspect
        
        @challenge = Challenge.new(challenge_params)
        if @challenge.save
            redirect_to challenges_path
        else
            render 'new'
        end
    end

    def edit
        @challenge = Challenge.find(params[:id])
    end
    
    def update
        @challenge = Challenge.find(params[:id])
        if @challenge.update(challenge_params)
            redirect_to challenge_path(@challenge)
        else
            render :edit
        end
    end

    def destroy
        @challenges = Challenge.find(params["id"])
        
        if current_user.isAdmin
            @challenges.destroy
            redirect_to challenges_path
        else
            alert = "You are not authorized to delete this challenge."
            redirect_to challenges_path, alert: alert
        end
    end

    private
    def challenge_params
        params.require(:challenge).permit(:title, :description, :points, :rank, :difficulty, :category_id)
    end
end
