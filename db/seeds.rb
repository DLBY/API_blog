require 'faker'

User.delete_all
Article.delete_all
puts'DB cleaned up successfully',

User.create!(
  email:'salutcestmoi@yopmail.com',
  encrypted_password:'123456',
)
puts 'user created successfully'

# generate 30 articles
30.times do
  Article.create!(
    title:Faker::Book.unique.title,
    content:Faker::TvShows::SouthPark.quote,
    user_id: 6
  )
end
puts '30 articles generated successfully'

