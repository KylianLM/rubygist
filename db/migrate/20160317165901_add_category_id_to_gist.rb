class AddCategoryIdToGist < ActiveRecord::Migration
  def change
    add_column :gists, :category_id, :integer
    add_index :gists, :category_id
  end
end
