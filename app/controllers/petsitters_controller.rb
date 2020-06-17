class PetsittersController < ApplicationController

  def new
    @petsitter = Petsitter.new
    authorize @petsitter
  end

  def create
    petsitter = Petsitter.new(petsitter_params)
    authorize petsitter
    petsitter.user = current_user
    petsitter.address = current_user.address
    petsitter.latitude = current_user.latitude
    petsitter.longitude = current_user.longitude
    if petsitter.save
      redirect_to petsitter_path(petsitter)
    else
      render :new
    end
  end

  def index
    if params[:search]
      sql_query = "address ILIKE :search AND latitude IS NOT NULL AND longitude IS NOT NULL"
      @petsitters = policy_scope(Petsitter.geocoded).where(sql_query, search: "%#{params[:search]}%")
      @markers = @petsitters.map do |petsitter|
        {
          lat: petsitter.latitude,
          lng: petsitter.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { petsitter: petsitter }),
          image_url: helpers.asset_url('house.png'),
        }
      end
    else
      @petsitters = policy_scope(Petsitter.geocoded)
      @markers = @petsitters.map do |petsitter|
        {
          lat: petsitter.latitude,
          lng: petsitter.longitude,
          infoWindow: render_to_string(partial: "info_window", locals: { petsitter: petsitter }),
          image_url: helpers.asset_url('house.png'),
        }
      end
    end

  end

  def show
    @petsitter = Petsitter.find(params[:id])
    authorize @petsitter
    @old = old
  end

  private

  def old
    now = Time.now.utc.to_date
    birthday = @petsitter.user.age
    now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def petsitter_params
    params.require(:petsitter).permit(:description, :motivation, :user_id)
  end

end
