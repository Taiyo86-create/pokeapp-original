class RoomsController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @match_user = MatchUser.new(match_user_params)
  end


end
