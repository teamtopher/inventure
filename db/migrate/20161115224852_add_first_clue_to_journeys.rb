class AddFirstClueToJourneys < ActiveRecord::Migration
  def change
    add_column :journeys, :first_clue, :text
  end
end
