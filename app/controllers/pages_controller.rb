class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @species = Specie.all
  end
end
