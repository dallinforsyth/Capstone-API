require "test_helper"

class FoodSchedulesControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "FoodSchedule.count", 1 do
      post "/food_schedules.json", params: { food: "kibble", frequency: 1, start_time: "9:00", pet_id: Pet.first.id }
      assert_response 200
    end
  end

  test "destroy" do
    assert_difference "FoodSchedule.count", -1 do
      delete "/food_schedules/#{FoodSchedule.first.id}.json"
      assert_response 200
    end
  end
end
