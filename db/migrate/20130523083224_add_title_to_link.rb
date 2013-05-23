class AddTitleToLink < ActiveRecord::Migration
  def up
   add_column :links, :title, :string
  end
end