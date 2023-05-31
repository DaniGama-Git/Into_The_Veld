class AddPhotosToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :photos, :string
  end
end
