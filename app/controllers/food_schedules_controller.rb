class FoodSchedulesController < ApplicationController
  def create
    @food_schedule = FoodSchedule.create!(
      food: params[:food],
      frequency: params[:frequency],
      start_time: params[:start_time],
      pet_id: params[:pet_id]
    )
    render :show
  end
end
