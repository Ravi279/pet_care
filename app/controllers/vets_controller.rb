class VetsController < ApplicationController
  before_action :set_vet, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vets = Vet.all
    respond_with(@vets)
  end

  def show
    respond_with(@vet)
  end

  def new
    @vet = Vet.new
    respond_with(@vet)
  end

  def edit
  end

  def create
    @vet = Vet.new(vet_params)
    @vet.save
    respond_with(@vet)
  end

  def update
    @vet.update(vet_params)
    respond_with(@vet)
  end

  def destroy
    @vet.destroy
    respond_with(@vet)
  end

  private
    def set_vet
      @vet = Vet.find(params[:id])
    end

    def vet_params
      params[:vet]
    end
end
