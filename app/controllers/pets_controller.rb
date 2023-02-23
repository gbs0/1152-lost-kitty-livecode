class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def create
    @pet = Pet.new(pet_params)
    if @pet.save
      redirect_to pet_path(@pet.id)
    else
      render "new"
    end
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update_attribute(:found_on, Date.today)
    redirect_to pet_path(@pet.id)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :address, :species, :photo)
  end

end
