class UsersController < ApplicationController

  def index
    @users = User.all
    @today =  Time.now.strftime('%m/%d/%Y').to_s
    @dates = Hash.new{ |h,k| h[k] = [] }
    User.first.schedule.each{ |k,v| @dates[v] << k }
    @weekends = ["07/05/2015","07/11/2015","07/12/2015","07/18/2015","07/19/2015","07/25/2015","07/26/2015"]
    @user = User.where(id: params[:id]).first
  end

  def show
    @user = User.where(id: params[:id]).first
    @dates = Hash.new{ |h,k| h[k] = [] }
    User.first.schedule.each{ |k,v| @dates[v] << k }

  end

  def monthlyschedule
    @users = User.all
    @user = User.first
    @dates = Hash.new{ |h,k| h[k] = [] }
    User.first.schedule.each{ |k,v| @dates[v] << k }

  end

  def update
    @user = current_user
    # @user = User.where(id: params[:id]).first
    @dates = Hash.new{ |h,k| h[k] = [] }
    User.first.schedule.each{ |k,v| @dates[v] << k }
    @dates.each_pair do |name, support_dates|
      if(@user.name == name)
        # @user.schedule.key()
      end
    end
    @user = User.update_attributes(user_params)
    # @user = current_user
  end

  private

  def user_params
    params.require(:user).permit(:name, :password, :image_url, :schedule)
  end

end

