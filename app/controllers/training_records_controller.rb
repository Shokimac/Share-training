class TrainingRecordsController < ApplicationController

    def create
        record = TrainingRecord.new(record_params)
        record.user_id = current_user.id
        record.training_genre_id = params[:event]
        record.save
        binding.pry
        redirect_to user_path(params[:user_id])
    end

    def edit

    end

    def update

    end

    def destroy

    end

    private

    def record_params
        params.require(:training_record).permit(:body, :comment)
    end
end
