class UsersController < ApplicationController

  def index
    @users = User.all
    # using time to display today's support hero
    @today =  Time.now.strftime('%m/%d/%Y').to_s
    @dates = Hash.new{ |h,k| h[k] = [] }
    # converts support hash with dates and names to easily manipulate with users as the key and dates the value in the form of an array
    User.first.schedule.each{ |k,v| @dates[v] << k }
    # today's support hero takes into account weekends
    @weekends = ["07/05/2015","07/11/2015","07/12/2015","07/18/2015","07/19/2015","07/25/2015","07/26/2015"]
  end

  def show
    # finds user by id in the database
    @user = User.where(id: params[:id]).first
    # converts support hash with dates and names to easily manipulate with users as the key and dates the value in the form of the dates array
    @dates = Hash.new{ |h,k| h[k] = [] }
    User.first.schedule.each{ |k,v| @dates[v] << k }

  end

  def monthlyschedule
    # stores all the users in instance variable
    @users = User.all
    @user = User.first
    # converts support hash with dates and names to easily manipulate with users as the key and dates the value in the form of the dates array
    @dates = Hash.new{ |h,k| h[k] = [] }
    User.first.schedule.each{ |k,v| @dates[v] << k }

  end

  def update
    # sets user to current user
    @user = current_user
    @dates = Hash.new{ |h,k| h[k] = [] }
    User.first.schedule.each{ |k,v| @dates[v] << k }
    # @dates.each_pair do |name, support_dates|
      # if(@user.name == name)
        # @user.schedule.key()
      # end
    # end
    @user.update!(user_params)
    # @user = current_user
  end

  private
  # used to pass in parameters for update that will be updated to save time and prevent typo bugs
  def user_params
    params.require(:user).permit(:name, :password, :image_url, :schedule)
  end

end

