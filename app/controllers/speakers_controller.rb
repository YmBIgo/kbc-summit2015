class SpeakersController < ApplicationController

  def index
    @speakers = Speaker.all.order('id ASC')
  end

  def show
    @speaker = Speaker.find(params[:id])
  end

end
