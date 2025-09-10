class DropPostsAndProjects < ActiveRecord::Migration[8.0]
  def change
    drop_table :posts
    drop_table :projects
  end
end
