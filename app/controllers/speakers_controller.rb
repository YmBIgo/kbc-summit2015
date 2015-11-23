class SpeakersController < ApplicationController

  http_basic_authenticate_with :name => ENV['EDIT_USER'], :password => ENV['EDIT_PASS'], only:[:edit, :update]

  def index
    @speakers = Speaker.all.order('id ASC')
  end

  def show
    @speaker = Speaker.find(params[:id])
  end

  def edit
    @speaker = Speaker.find(params[:id])
    @speakers = Speaker.all
    @team = Team.find(params[:id])
    @teams = Team.all
  end

  def update
    @team = Team.find(params[:id])
    @teams = Team.all
    @speaker = Speaker.find(params[:id])
    @speakers = Speaker.all
    @speaker.update(update_params)
  end

  private

  def update_params
    params.require(:speaker).permit(:name, :job, :carrier, :introduce, :message)
  end

end
