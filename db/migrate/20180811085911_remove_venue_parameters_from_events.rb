class RemoveVenueParametersFromEvents < ActiveRecord::Migration[5.1]
  def change
    remove_column :events, :longitude
    remove_column :events, :latitude
  end
end
