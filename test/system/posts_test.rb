require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  test "visiting / renders the title" do
    visit("/")
    assert_selector "h1", text: "RAN1000"
  end

  # test "visiting show page renders the title of the category" do
  #   visit(post_path(@post))
  #   assert_selector "h2", text: @post.title
  # end
end
