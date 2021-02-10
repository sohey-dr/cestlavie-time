class CreateTimeTables < ActiveRecord::Migration[6.0]
  def change
    create_table :time_tables do |t|
      t.integer :day
      t.string :time

      t.timestamps
    end
  end
end
