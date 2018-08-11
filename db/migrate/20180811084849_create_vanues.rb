class CreateVanues < ActiveRecord::Migration[5.1]
  def change
    create_table :vanues do |t|
      t.string :name
      t.string :longitude
      t.string :latitude
      t.references :event, foreign_key: true

      t.timestamps
    end
  end
end
