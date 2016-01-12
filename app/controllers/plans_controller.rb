class PlansController < ApplicationController

  http_basic_authenticate_with :name => ENV['EDIT_USER'], :password => ENV['EDIT_PASS']
  def index
    @plans = Plan.all.order('start_month ASC, start_day ASC')
  end
  def show
    @plan = Plan.find(params[:id])
    @members = @plan.members
  end
  def new
    @plan = Plan.new
  end
  def create
    @plan = Plan.create(create_params)
  end

  private
  def create_params
    params.require(:plan).permit(:dinner_name, :detail, :start_month, :start_day, :start_time)
  end

end
