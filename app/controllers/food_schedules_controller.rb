class FoodSchedulesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    @food_schedule = FoodSchedule.create!(
      food: params[:food],
      frequency: params[:frequency],
      start_time: params[:start_time],
      pet_id: params[:pet_id],
    )
    render :show
  end

  def destroy
    @food_schedule = FoodSchedule.find_by(id: params[:id])
    @food_schedule.destroy
    render json: { message: "Food Schedule destroyed successfully" }
  end
end
