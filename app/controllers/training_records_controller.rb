class TrainingRecordsController < ApplicationController

    def create
        record = TrainingRecord.new(record_params)
        record.user_id = current_user.id
        record.training_genre_id = params[:event]
        record.save
        redirect_to user_path(params[:user_id])
    end

    def edit
        @record = TrainingRecord.find(params[:id])
        @genres = TrainingGenre.where(user_id: current_user.id).all
    end

    def update
        record = TrainingRecord.find(params[:id])
        record.training_genre_id = params[:event]
        record.update(record_params)
        redirect_to user_path(params[:user_id])
    end

    def destroy
        record = TrainingRecord.find(params[:id])
        record.destroy
        redirect_to user_path(params[:user_id])
    end

    private

    def record_params
        params.require(:training_record).permit(:body, :comment)
    end
end