class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    authorize @user
    @old = old
  end

  private

  def old
    now = Time.now.utc.to_date
    birthday = @user.age
    now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
  end


end
