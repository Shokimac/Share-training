class HomesController < ApplicationController
  def top
  end

  def search
    @teams = Team.where("name LIKE?", "#{params[:word]}%")
  end

  def privacy_policy

  end
end