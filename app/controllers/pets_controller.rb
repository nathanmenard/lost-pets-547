class PetsController < ApplicationController
  def new
    @pet = Pet.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save!

    # redirec
  end

  def index
    @pets = Pet.all
  end

  private

  def pet_params
    params.require(:pet).permit(:species, :found_location, :age)
  end
end
