class MembersController < ApplicationController

  http_basic_authenticate_with :name => ENV['EDIT_USER'], :password => ENV['EDIT_PASS']
  def new
    @member = Member.new
    @plans = Plan.all.order('start_month ASC, start_day ASC')
  end
  def create
    @member = Member.create(create_params)
  end

  private
  def create_params
    params.require(:member).permit(:plan_id, :name)
  end

end
