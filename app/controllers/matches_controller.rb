class MatchesController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def create
    @match_user = MatchUser.new(match_user_params)
  end

  private

  def match_user_params
    params.require(:match_user).permit(:user_id, :match_id)
  end
end
