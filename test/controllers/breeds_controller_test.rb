require "test_helper"

class BreedsControllerTest < ActionDispatch::IntegrationTest
  test "create" do
    assert_difference "Breed.count", 1 do
      post "/breeds.json", params: { classification: "bangel", animal_type: "cat", external_id: "beng", temperament: "Jumpy, nice, playful", description: "cute littel fur ball", life_span: "10-15", origin: "UK", hypoallergenic: 0 }
      assert_response 200
    end
  end
end
