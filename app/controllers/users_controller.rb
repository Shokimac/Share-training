class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    team_id = TeamMember.find_by(user_id: @user.id).team_id
    @join_team = Team.find(team_id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)

  end


  def withdrawal
    
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :goal, :image, :genre_id)
  end
end
