class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @new_training_genre = TrainingGenre.new
    @new_record = TrainingRecord.new
    @genres = TrainingGenre.where(user_id: current_user.id).all
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
