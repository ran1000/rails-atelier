unless Post.first && Category.first && PostsCategory.first
  # Posts Seeds
  puts "Creating posts..."
  norberg01_post = { title: "Norberg01", text: "Norberg 2022", images: "https://images.unsplash.com/photo-1514272272587-d4fae170976f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=974&q=80" }
  writing01_post = { title: "WritingAct01", text: "Lorem Ipsum" }
  [norberg01_post, writing01_post].each do |attributes|
    post = Post.create!(attributes)
    puts "Created #{post.title.downcase} post."
  end

  # Categories Seeds
  puts "Creating categories..."
  categories = []
  categories << creative_coding_category = { tag: "Creative Coding" }
  categories << places_category = { tag: "Places" }
  categories << notes_category = { tag: "Notes" }
  categories << facades_category = { tag: "Façades" }
  categories << projects_category = { tag: "Projects" }
  categories << inspirations_category = { tag: "Inspirations" }
  categories << concepts_category = { tag: "Concepts" }
  categories.each do |attributes|
    category = Category.create!(attributes)
    puts "Created #{category.tag.downcase} category."
  end

  # Posts-Categories Seeds
  puts "Creating posts-categories ..."
  joined_table01 = { post_id: norberg01_post.id, category_id: places_category.id }
  joined_table02 = { post_id: writing01_post.id, category_id: notes_category.id }
  [joined_table01, joined_table02].each do |attributes|
    joined_table = PostsCategory.create!(attributes)
    puts "Created reference between #{joined_table.post.title} and #{joined_table.category.tag}."
  end

  puts "Seeding done!"
end
