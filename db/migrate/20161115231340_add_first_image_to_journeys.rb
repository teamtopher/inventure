class AddFirstImageToJourneys < ActiveRecord::Migration
  def change
    add_column :journeys, :first_image, :string
  end
end
