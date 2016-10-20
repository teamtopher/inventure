class AddImageToClues < ActiveRecord::Migration
  def change
    add_column :clues, :image, :string
  end
end
