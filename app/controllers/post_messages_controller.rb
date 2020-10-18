class PostMessagesController < ApplicationController
    def create
        message = PostMessage.new(message_params)
        message.user_id = current_user.id
        message.team_id = params[:team_id]
        message.save
        redirect_to team_path(params[:team_id])
    end

    def destroy
    end

    private

    def message_params
        params.require(:post_message).permit(:body)
    end
end
