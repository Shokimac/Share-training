class TrainingGenresController < ApplicationController
    def create
        genre = TrainingGenre.new(training_genre_params)
        genre.user_id = current_user.id
        genre.save
        redirect_to user_path(params[:user_id])
    end

    def update
        
    end

    def destroy

    end

    private

    def training_genre_params
        params.require(:training_genre).permit(:name)
    end
end
