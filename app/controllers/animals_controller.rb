class AnimalsController < ApplicationController

def new
  @animal = Animal.new
  authorize @animal
end

def create
  @animal = Animal.new(animal_params)
  authorize @animal
  @animal.user = current_user
  if @animal.save
    redirect_to animal_path(@animal)
  else
    render :new
  end
end

private

def animal_params
   params.require(:animal).permit(:name, :age, :sex, :description, :user_id, :bleed_id, :specie_id, photos: [])
end

end
