class ChangeCarsTable < ActiveRecord::Migration[7.0]
  def change
    change_table :cars do |t|
      t.remove :start_date, :end_date
      t.boolean :available
    end
  end
end
