class AddCommentIdToArticles < ActiveRecord::Migration
  def change
      add_column :articles, :comment_id, :integer
      add_index :articles, :comment_id
  end
end
