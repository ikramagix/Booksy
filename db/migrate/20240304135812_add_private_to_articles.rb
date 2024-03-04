class AddPrivateToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :private, :boolean
  end
end
