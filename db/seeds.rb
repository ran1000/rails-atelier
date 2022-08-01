puts "Cleaning database..."
PostsCategory.destroy_all
Category.destroy_all
Post.destroy_all
# Posts Seeds
puts "--------------------"
puts "Creating posts..."
puts "--------------------"
posts = []
creative_coding01_post = Post.new(title: "Creative Coding", text: "")
creative_coding01_post.photos.attach(io: File.open(Rails.root.join("app/assets/images/creativecoding_01.png")),
                                     filename: "creativecoding_01")
posts << creative_coding01_post
norberg01_post = Post.new(title: "Norberg Mimerlaven", text: "")
norberg01_post.photos.attach(io: File.open(Rails.root.join("app/assets/images/norberg_01.jpg")),
                             filename: "norberg_01")
posts << norberg01_post
writing01_post = Post.new(title: "Writing Act #01", text: "Establishing a connection of the real world with the
    digital environment. Reproducing things, bringing them through the fence, realising new virtual spaces.
    Contaminating ideas. Not making, just seeing the distances between what’s there and what can never be there.")
posts << writing01_post
norberg02_post = Post.new(title: "Raw and lights", text: "")
norberg02_post.photos.attach(io: File.open(Rails.root.join("app/assets/images/norberg_02.jpg")),
                             filename: "norberg_02")
posts << norberg02_post
project01_post = Post.new(title: "Spotaloo", text: "")
posts << project01_post
facade01_post = Post.new(title: "Stockholm Port", text: "")
facade01_post.photos.attach(io: File.open(Rails.root.join("app/assets/images/stockholm_01.jpg")),
                            filename: "stockholm_01")
posts << facade01_post
computer_poetry01_post = Post.new(title: "Random Poetry #99", text: "")
facade01_post.photos.attach(io: File.open(Rails.root.join("app/assets/images/poetry_01.png")),
                            filename: "poetry_01")
posts << computer_poetry01_post
concept01_post = Post.new(title: "Open Ready Process", text: "")
concept01_post.photos.attach(io: File.open(Rails.root.join("app/assets/images/concept_01.jpg")),
                             filename: "concept_01")
posts << concept01_post
corner01_post = Post.new(title: "Night Corner", text: "")
corner01_post.photos.attach(io: File.open(Rails.root.join("app/assets/images/corner_01.jpg")),
                            filename: "corner_01")
posts << corner01_post
to_digital01_post = Post.new(title: "Steel Can Button", text: "")
to_digital01_post.photos.attach(io: File.open(Rails.root.join("app/assets/images/todigital_01.jpg")),
                                filename: "todigital_01")
posts << to_digital01_post
posts.each do |post|
  post.save!
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
