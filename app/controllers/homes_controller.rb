class HomesController < ApplicationController
  def top
    @newTeams = Team.order(:created_at).limit(5)
  end

  def search
    @users = User.where(genre_id: params[:genre]).where("name LIKE?", "#{params[:word]}%")
  end

  def privacy_policy

  end
end