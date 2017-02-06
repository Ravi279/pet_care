class PetsController < ApplicationController
  before_action :set_pet, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pets = Pet.all
    respond_with(@pets)
  end

  def show
    respond_with(@pet)
  end

  def new
    @pet = Pet.new
    respond_with(@pet)
  end

  def edit
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
    respond_with(@pet)
  end

  def update
    @pet.update(pet_params)
    respond_with(@pet)
  end

  def destroy
    @pet.destroy
    respond_with(@pet)
  end

  private
    def set_pet
      @pet = Pet.find(params[:id])
    end

    def pet_params
      params[:pet]
    end
end
