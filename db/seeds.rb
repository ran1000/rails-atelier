unless Post.first && Category.first && PostsCategory.first
  # Posts Seeds
  puts "--------------------"
  puts "Creating posts..."
  puts "--------------------"
  posts = []
  posts << creative_coding01_post = { title: "Creative Coding", text: "", images: "creativecoding_01.png" }
  posts << norberg01_post = { title: "Norberg Mimerlaven", text: "", images: "norberg_01.jpg" }
  posts << writing01_post = { title: "Writing Act #01", text: "Establishing a connection of the real world with the
    digital environment. Reproducing things, bringing them through the fence, realising new virtual spaces.
    Contaminating ideas. Not making, just seeing the distances between what’s there and what can never be there.",
     images: "" }
  posts << norberg02_post = { title: "Raw and lights", text: "", images: "norberg_02.jpg" }
  posts << project01_post = { title: "Spotaloo", text: "", images: "" }
  posts << facade01_post = { title: "Stockholm Port", text: "", images: "stockholm_01.jpg" }
  posts << computer_poetry01_post = { title: "Random Poetry #99", text: "", images: "poetry_01.png" }
  posts << concept01_post = { title: "Open Ready Process", text: "", images: "concept_01.jpg" }
  posts << corner01_post = { title: "Night Corner", text: "", images: "corner_01.jpg" }
  posts << to_digital01_post = { title: "Steel Can Button", text: "", images: "todigital_01.jpeg" }
  posts.each do |attributes|
    post = Post.create!(attributes)
    puts "Created #{post.title.downcase} post."
  end
  puts "--------------------"
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
  categories << to_digital_category = { tag: "Analog To Digital" }
  categories.each do |attributes|
    category = Category.create!(attributes)
    puts "Created #{category.tag.downcase} category."
  end
  puts "--------------------"
  # Posts-Categories Seeds
  puts "Creating posts-categories ..."
  posts_categories = []
  posts_categories << joined_table01 = { post_id: Post.find_by(title: "Creative Coding").id,
                                         category_id: Category.find_by(tag: "Creative Coding").id }
  posts_categories << joined_table02 = { post_id: Post.find_by(title: "Norberg Mimerlaven").id,
                                         category_id: Category.find_by(tag: "Places").id }
  posts_categories << joined_table03 = { post_id: Post.find_by(title: "Writing Act #01").id,
                                         category_id: Category.find_by(tag: "Notes").id }
  posts_categories << joined_table04 = { post_id: Post.find_by(title: "Raw and lights").id,
                                         category_id: Category.find_by(tag: "Places").id }
  posts_categories << joined_table05 = { post_id: Post.find_by(title: "Spotaloo").id,
                                         category_id: Category.find_by(tag: "Projects").id }
  posts_categories << joined_table06 = { post_id: Post.find_by(title: "Stockholm Port").id,
                                         category_id: Category.find_by(tag: "Façades").id }
  posts_categories << joined_table07 = { post_id: Post.find_by(title: "Random Poetry #99").id,
                                         category_id: Category.find_by(tag: "Inspirations").id }
  posts_categories << joined_table08 = { post_id: Post.find_by(title: "Open Ready Process").id,
                                         category_id: Category.find_by(tag: "Concepts").id }
  posts_categories << joined_table09 = { post_id: Post.find_by(title: "Night Corner").id,
                                         category_id: Category.find_by(tag: "Inspirations").id }
  posts_categories << joined_table10 = { post_id: Post.find_by(title: "Night Corner").id,
                                         category_id: Category.find_by(tag: "Places").id }
  posts_categories << joined_table11 = { post_id: Post.find_by(title: "Creative Coding").id,
                                         category_id: Category.find_by(tag: "Projects").id }
  posts_categories << joined_table12 = { post_id: Post.find_by(title: "Raw and lights").id,
                                         category_id: Category.find_by(tag: "Inspirations").id }
  posts_categories << joined_table13 = { post_id: Post.find_by(title: "Norberg Mimerlaven").id,
                                         category_id: Category.find_by(tag: "Façades").id }
  posts_categories << joined_table14 = { post_id: Post.find_by(title: "Steel Can Button").id,
                                         category_id: Category.find_by(tag: "Analog To Digital").id }
  posts_categories.each do |attributes|
    joined_table = PostsCategory.create!(attributes)
    puts "Created reference between #{joined_table.post.title} and #{joined_table.category.tag}."
  end
  puts "--------------------"
  puts "Seeding done!"
end
