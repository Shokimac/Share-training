class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    binding.pry
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
  end

  def edit
  end

  def update

  end

  def index
  end

  def destroy
    
  end

  private

  def team_params
    params.require(:team).permit(:name, :introduction, :image_id)
  end
end
