class BookmarksController < ApplicationController

    def create
        @team = Team.find(params[:team_id])
        bookmark = Bookmark.new(user_id: current_user.id, team_id: @team.id)
        bookmark.save
        redirect_to team_path(@team)
    end

    def destroy

    end
end
