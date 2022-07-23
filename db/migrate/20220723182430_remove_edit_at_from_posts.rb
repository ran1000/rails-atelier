class RemoveEditAtFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :edit_at, :datetime
  end
end
