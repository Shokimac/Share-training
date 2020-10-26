class HomesController < ApplicationController
  def top
    @newTeams = Team.limit(5)
    @bookmarks = Team.limit(5).sort {|a,b| b.bookmarks.count <=> a.bookmarks.count}
    @new_messages = PostMessage.limit(5)
  end

  def search
    @users = User.where(genre_id: params[:genre]).where("name LIKE?", "#{params[:word]}%")
  end

  def privacy_policy

  end
end