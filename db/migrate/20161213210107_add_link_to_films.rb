class AddLinkToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :link, :string
  end
end
