class BookmarksController < ApplicationController

    def create
        @team = Team.find(params[:team_id])
        bookmark = @team.bookmarks.new(user_id: current_user.id)
        bookmark.save
        redirect_to team_path(@team)
    end

    def destroy
        @team = Team.find(params[:team_id])
        bookmark = Bookmark.find_by(user_id: current_user.id, team_id: @team.id)
        unless bookmark.destroy
        render 'teams/show'
        end
        redirect_to team_path(params[:team_id])
    end
end
