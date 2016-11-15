class RemoveUploaderFromJourneys < ActiveRecord::Migration
  def change
    remove_column :journeys, :uploader, :string
  end
end
