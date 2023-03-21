require "test_helper"

class PetsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/pets.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Pet.count, data.length
  end

  test "show" do
    get "/pets/#{Pet.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "birthday", "image_url", "user_id", "breed_id", "created_at", "updated_at", "breed", "food_schedules"], data.keys
  end

  test "create" do
    assert_difference "Pet.count", 1 do
      post "/pets.json", params: { name: "Timmy", birthday: "2005/01/01", image_url: "test.jpeg", user_id: User.first.id, breed_id: Breed.first.id }
      assert_response 200
    end
  end
end
