# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# Character.create(name: "Luke", movie: movies.first)
unless Post.first && Category.first && PostsCategory.first
  # Posts Seeds
  puts "Creating posts..."
  norberg01_post = { title: "Norberg01", text: "Norberg 2022", images: "https://images.unsplash.com/photo-1514272272587-d4fae170976f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=974&q=80" }
  writing01_post = { title: "WritingAct01", text: "Lorem Ipsum" }
  [norberg01_post, writing01_post].each do |attributes|
    post = Post.create!(attributes)
    puts "Created #{post.title.downcase} post"
  end

  # Categories Seeds
  puts "Creating categories..."
  places_category = { tag: "Places"}
  notes_category = { tag: "Notes" }
  [places_category, notes_category].each do |attributes|
    category = Category.create!(attributes)
    puts "Created #{category.tag.downcase} category"
  end

  # Posts-Categories
  puts "Creating posts-categories ..."
  joined_table01 = PostsCategory.new(post_id: norberg01_post.id, category_id: places_category.id)
  joined_table01.save!
  joined_table02 = PostsCategory.new(post_id: writing01_post.id, category_id: notes_category.id)
  joined_table02.save!

  puts "Seeding done!"
end
