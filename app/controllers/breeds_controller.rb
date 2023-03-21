class BreedsController < ApplicationController
  def create
    @breed = Breed.create!(
      classification: params[:classification],
      animal_type: params[:animal_type],
    )
    render :show
  end
end
