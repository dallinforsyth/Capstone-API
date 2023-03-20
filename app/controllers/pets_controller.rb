class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render :index
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render :show
  end

  def create
    @pet = Pet.create!(
      name: params[:name],
      birthday: params[:birthday],
      image_url: params[:image_url],
      user_id: params[:user_id],
      breed_id: params[:breed_id],
    )
    render :show
  end
end
