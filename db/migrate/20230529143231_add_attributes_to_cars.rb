class AddAttributesToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :title, :string
    add_column :cars, :description, :string
    add_column :cars, :price, :float
    add_column :cars, :start_date, :date
    add_column :cars, :end_date, :date
    add_column :cars, :make, :string
    add_column :cars, :model, :string
    add_column :cars, :accomodation, :boolean
    add_column :cars, :cooking, :boolean
    add_column :cars, :seats, :integer
    add_column :cars, :consumption, :integer
  end
end
