class UsersController < ApplicationController

  def index
    if params[:search]
      sql_query = "address ILIKE :search AND latitude IS NOT NULL AND longitude IS NOT NULL"
      @users = policy_scope(User.geocoded).where(sql_query, search: "%#{params[:search]}%")
    else
      @users = policy_scope(User.geocoded)
    end
  end

end
