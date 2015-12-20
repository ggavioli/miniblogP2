class TableCreateComments < ActiveRecord::Migration
  def change
      create_table :comments
      add_column :comments, :autors_name, :string
      add_column :comments, :content, :text
  end
end
