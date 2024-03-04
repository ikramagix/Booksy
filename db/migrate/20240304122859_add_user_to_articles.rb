class AddUserToArticles < ActiveRecord::Migration[7.1]
  def change
    add_reference :articles, :user, null: false, foreign_key: true
  end
end
