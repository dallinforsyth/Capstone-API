require "test_helper"

class BreedsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Breed.count", 1 do
      post "/breeds.json", params: { classification: "bangel", animal_type: "cat" }
      assert_response 200
    end
  end
end
