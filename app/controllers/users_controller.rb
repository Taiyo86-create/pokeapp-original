class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @match_user = Match.create(match_user_params)
    if @match_user.save
      redirect_to root_path
    else
      render :index
    end
  end

  def destroy
    sign_out(current_user)
    redirect_to root_path
  end

  private

  def match_user_params
    params.require(:match).permit(:user_id, :match_id)
  end



end
