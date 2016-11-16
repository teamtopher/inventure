class AddDestinationToJourneys < ActiveRecord::Migration
  def change
    add_column :journeys, :destination, :text
  end
end
