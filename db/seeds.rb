# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Api::V1::Post.create!([{
  category: 'Education',
  title: "Physics post",
  content: "Hey this is content 1",
  description: "physics.",
  user_id: 1
},
{
  category: 'News',
  title: "News post",
  content: "Hey this is News post",
  description: "News.",
  user_id: 8
},
{
  category: 'Business',
  title: "Business post",
  content: "Hey this is business post",
  description: "business.",
  user_id: 6
},
{
  category: 'Life style',
  title: "Life style post",
  content: "Hey this is life style post",
  description: "life style.",
  user_id: 5
},
{
  category: 'Fitness',
  title: "Fitness post",
  content: "Hey this is Fitness post",
  description: "Fitness.",
  user_id: 4
}])