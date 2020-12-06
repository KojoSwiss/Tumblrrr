require 'faker'

puts 'Destroying Data...'
Post.destroy_all

puts 'Creating 10 fake Posts...'
100.times do
  post = Post.new(
    title: Faker::Company.name,
    body: Faker::Quote.matz
  )
  post.save
end
puts 'Finished!'
