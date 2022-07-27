unless Post.first && Category.first && PostsCategory.first
  # Posts Seeds
  puts "Creating posts..."
  posts = []
  posts << creative_coding01_post = { title: "Creative Coding", text: "", images: "app/assets/images/creativecoding_01.png" }
  posts << norberg01_post = { title: "Norberg Mimerlaven", text: "", images: "app/assets/images/norberg_01.jpg" }
  posts << writing01_post = { title: "Writing Act #01", text: "Establishing a connection of the real world with the
    digital environment. Reproducing things, bringing them through the fence, realising new virtual spaces.
    Contaminating ideas. Not making, just seeing the distances between what’s there and what can never be there.",
     images: "" }
  posts << norberg02_post = { title: "Raw and lights", text: "", images: "app/assets/images/norberg_02.jpg" }
  posts << project01_post = { title: "Spotaloo", text: "", images: "" }
  posts << facade01_post = { title: "Stockholm Port", text: "", images: "app/assets/images/stockholm_01.jpg" }
  posts << computer_poetry01_post = { title: "Random Poetry #99", text: "", images: "app/assets/images/poetry_01.png" }
  posts << concept01_post = { title: "Open Ready Process", text: "", images: "app/assets/images/concept_01.jpg" }
  posts << corner01_post = { title: "Night Corner", text: "", images: "app/assets/images/corner_01.jpg" }
  posts.each do |attributes|
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
