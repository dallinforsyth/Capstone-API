class BreedsController < ApplicationController
  def create
    @breed = Breed.create!(
      name: params[:name],
      animal_type: params[:animal_type],
    )
    render :show
  end
end
