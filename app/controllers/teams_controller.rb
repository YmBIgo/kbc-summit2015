class TeamsController < ApplicationController

    http_basic_authenticate_with :name => ENV['EDIT_USER'], :password => ENV['EDIT_PASS'], only:[:edit, :update]

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
    @teams = Team.all
    @speaker = Speaker.find(params[:id])
    @speakers = Speaker.all
  end

  def update
    @team = Team.find(params[:id])
    @teams = Team.all
    @speaker = Speaker.find(params[:id])
    @speakers = Speaker.all

    @team.update(update_params)
  end

  private

  def update_params
    params.require(:team).permit(:name, :text, :leader)
  end

end
