# frozen_string_literal: true

# CreatePosts migration creates the 'posts' table in the database.
# The table will include the following columns:
# - title: A string column to store the title of the post.
# - body: A text column to store the content of the post.
# - timestamps: Automatically managed columns for 'created_at' and 'updated_at'.
#
# This migration is part of setting up the database structure for the posts feature
# in the application.
class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
