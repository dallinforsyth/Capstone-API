require "http"

user1 = User.create!(first_name: "Dallin", last_name: "Forsyth", image_url: "https://www.shutterstock.com/image-vector/simple-stick-man-figure-drawing-260nw-438084892.jpg", email: "email@email.com", password_digest: "password")

url = ("https://api.thecatapi.com/v1/breeds/")
response = HTTP.get(url)
cat = response.parse(:json)
i = 0
while i < cat.length
  Breed.create!(external_id: cat[i]["id"], classification: cat[i]["name"], temperament: cat[i]["temperament"], description: cat[i]["description"], life_span: cat[i]["life_span"], origin: cat[i]["origin"], hypoallergenic: cat[i]["hypoallergenic"], animal_type: "cat")
  i += 1
end

pet1 = Pet.create!(name: "Ace", birthday: DateTime.strptime("02/14/2019", "%m/%d/%Y"), image_url: "https://ih1.redbubble.net/image.1204987711.7229/flat,128x128,075,f-pad,128x128,f8f8f8.jpg", user_id: user1.id, breed_id: Breed.first.id)
pet2 = Pet.create!(name: "Zora", birthday: DateTime.strptime("07/28/2020", "%m/%d/%Y"), image_url: "https://images.vexels.com/media/users/3/139888/isolated/lists/3848e545756138012801c49fcac3aa6f-cat-silhouette-1.png", user_id: user1.id, breed_id: Breed.first.id)

FoodSchedule.create!(food: "Purina", frequency: 2, start_time: DateTime.strptime("17:00", "%H:%M"), pet_id: pet1.id)
FoodSchedule.create!(food: "Purina", frequency: 1, start_time: DateTime.strptime("9:00", "%H:%M"), pet_id: pet2.id)
