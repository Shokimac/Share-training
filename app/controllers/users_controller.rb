class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # 簡潔な書き方があれば、後ほど修正する予定
    unless TeamMember.find_by(user_id: @user.id).nil?
      team_id = TeamMember.find_by(user_id: @user.id).team_id
      @join_team = Team.find(team_id)
    else
      @join_team = nil
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)

  end

  def confirmation
    @user = User.find(current_user.id)
  end

  def withdrawal
    join_team  = TeamMember.find_by(user_id: current_user.id).destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :goal, :image, :genre_id)
  end
end
