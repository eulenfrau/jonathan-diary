class AddAbbrToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :abbr, :string
  end
end
