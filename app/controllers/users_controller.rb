class UsersController < ApplicationController

  def index
    if params[:search]
      sql_query = "address ILIKE :search AND latitude IS NOT NULL AND longitude IS NOT NULL"
      @users = policy_scope(User.geocoded).where(sql_query, search: "%#{params[:search]}%")
    else
      @users = policy_scope(User.geocoded)
    end
  end

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
