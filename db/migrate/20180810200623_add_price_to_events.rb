class AddPriceToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :price, :decimal, default: 0
  end
end
