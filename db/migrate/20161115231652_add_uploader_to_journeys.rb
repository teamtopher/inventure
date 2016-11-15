class AddUploaderToJourneys < ActiveRecord::Migration
  def change
    add_column :journeys, :uploader, :string
  end
end
