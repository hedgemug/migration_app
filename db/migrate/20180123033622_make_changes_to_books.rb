class MakeChangesToBooks < ActiveRecord::Migration[5.1]
  def change
    rename_column :books, :title, :name
    change_column :books, :description, :text
    change_column :books, :price, :decimal, precision: 6, scale: 2
  end
end
