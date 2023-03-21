json.id pet.id
json.name pet.name
json.birthday pet.birthday
json.image_url pet.image_url
json.user_id pet.user_id
json.breed_id pet.breed_id
json.created_at pet.created_at
json.updated_at pet.updated_at
json.breed pet.breed
json.food_schedules pet.food_schedules.map do |food_schedule|
  json.food food_schedule.food
  json.frequency food_schedule.frequency
  json.start_time food_schedule.start_time
end
