user1 = User.create!(first_name: "Dallin", last_name: "Forsyth", image_url: "https://www.shutterstock.com/image-vector/simple-stick-man-figure-drawing-260nw-438084892.jpg", email: "test@email.com", password: "password")

breed1 = Breed.create!(name:)

Pet.create!(name: "Ace", birthday: DateTime.strptime("02/14/2019", "%m/%d/%Y"), image_url: "https://i.pinimg.com/originals/6f/df/bc/6fdfbc41d6a8e26d4b9073bc1afd899f.jpg", user_id: user1.id, breed: breed1.id)
