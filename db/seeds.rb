puts "Clearing Pokemon World 💣"

if Rails.env.development?
  LearnedMove.destroy_all
  Move.destroy_all
  Trainer.destroy_all
  Pokemon.destroy_all
end

puts "Creating Trainers"
ash = Trainer.create!(
  name: "Ash Ketchum",
  banner_url: "https://www.thefactsite.com/wp-content/uploads/2017/09/ash-ketchum-facts-pokemon.jpg"
)

gary = Trainer.create!(
  name: "Gary Oak",
  banner_url: "https://www.tvovermind.com/wp-content/uploads/2018/08/GarySquirtle.jpg"
)

brock = Trainer.create!(
  name: "Brock",
  banner_url: "https://static1.srcdn.com/wordpress/wp-content/uploads/2016/11/Brock-Pokemon-Series.jpg"
)
puts "Created #{Trainer.count} Pokemon Trainers 🏋️‍♂️"

puts "Creating Pokemon"
Pokemon.create!(
  name: "Bubbles",
  image_url: "https://cdn.bulbagarden.net/upload/3/39/007Squirtle.png",
  trainer: ash
)

Pokemon.create!(
  name: "Flint",
  image_url: "https://cdn.bulbagarden.net/upload/thumb/7/73/004Charmander.png/500px-004Charmander.png",
  trainer: ash
)

Pokemon.create!(
  name: "Ivy",
  image_url: "https://cdn.bulbagarden.net/upload/thumb/7/73/002Ivysaur.png/500px-002Ivysaur.png",
  trainer: ash
)

Pokemon.create!(
  name: "Sparky",
  image_url: "https://cdn.bulbagarden.net/upload/thumb/0/0d/025Pikachu.png/500px-025Pikachu.png",
  trainer: ash
)

Pokemon.create!(
  name: "Arcanine",
  image_url: "https://cdn.bulbagarden.net/upload/thumb/b/b8/059Arcanine.png/500px-059Arcanine.png",
  trainer: gary
)

Pokemon.create!(
  name: "Onix",
  image_url: "https://cdn.bulbagarden.net/upload/thumb/9/9a/095Onix.png/500px-095Onix.png",
  trainer: brock
)
puts "Created #{Pokemon.count} Pokemon 🐢"


puts "Finished Seeding 🌱"


names = %w(Water\ Gun Thunderbolt Ember Dig Tackle Body\ Slam)

names.each do |move|
  Move.create!(name: move)
end


# Psuedo Code
# Generate the moves table X
# Generate the learned_moves table X
# Add our associations and validations X
# Crash test our data brick in rails c X
