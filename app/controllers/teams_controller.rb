class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
    redirect_to team_path(@team)
    else
      @team.errors.full_messages
      render :new
    end
  end

  def show
    @team = Team.find(params[:id])
    @new_message = PostMessage.new
    @to_team_messages = PostMessage.where(team_id: params[:id])
  end

  def index
    @teams = Team.all
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(team_params)
    redirect_to team_path(@team)
  end

  def destroy
    @team = Team.find(params[:id])
    @team.destroy
    redirect_to teams_path
  end

  private

  def team_params
    params.require(:team).permit(:name, :introduction, :image)
  end
end
