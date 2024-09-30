class ChallengesController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
    end

    def show
        @challenge = Challenge.find(params[:id])
    end

    def new
        @challenge = Challenge.new
        @challenge.documentations.build
    end
    

    def create
        puts "Create challenge"
        @challenge = Challenge.new(challenge_params)

        if params[:challenge][:documentations_attributes].present?
            params[:challenge][:documentations_attributes].each do |_, doc_params|
              if doc_params[:file_path].present?
                doc_params[:file_path].each do |uploaded_file|
                  # Process the file and save the path to documentation
                  new_file_path = Document.save_file(uploaded_file)
                  @challenge.documentations.build(path: new_file_path)
                end
              end
            end
          end

        if @challenge.save
            redirect_to challenges_path
        else
            render 'new'
            @challenge.documentations.build
        end
    end

    def edit
        @challenge = Challenge.find(params[:id])
        @challenge.documentations.build
    end
    
    def update
        @challenge = Challenge.find(params[:id])
        if params[:challenge][:documentations_attributes].present?
            params[:challenge][:documentations_attributes].each do |_, doc_params|
              if doc_params[:path].present?
                doc_params[:path].each do |uploaded_file|
                    if uploaded_file == ""
                        next
                    end
                  # Process the file and save the path to documentation
                  new_file_path = Documentation.save_file(uploaded_file)
                  @challenge.documentations.build(path: new_file_path, title: doc_params[:title], challenge_id: @challenge.id)
                end
              end
            end
          end
        if @challenge.update(challenge_params)
            redirect_to challenge_path(@challenge)
        else
            render :edit
            @challenge.documentations.build
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
