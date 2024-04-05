class MatchesController < ApplicationController

  def show
    @user = User.find(params[:id])
    @match = Match.new
  end

  def create
    Match.create(match_params)
    if @match.save
      redirect_to root_path
    else
      render :show
    end
  end

  private
  def match_params
    params.require(:match).permit(user_ids: [])
  end

end
