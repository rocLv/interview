# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posts = []
10.times do |i|
  posts << Post.create!(title: "Post Tilte #{i}", body: "Post Body #{i}")
end

posts.each do |post|
  10.times do |i|
    post.comments.create!(user: "user#{i}", body: "Comment body #{i}")
  end
end

articals = []
10.times do |i|
  articals << Artical.create!(title: "title #{i}", body: "body #{i}")
end

articals.each do |artical|
  10.times do |i|
    artical.comments.create!(user: "user#{i}", body: "coment body #{i}")
  end
end
