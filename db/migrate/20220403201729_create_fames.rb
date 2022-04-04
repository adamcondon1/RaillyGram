class CreateFames < ActiveRecord::Migration[7.0]
  def change
    create_table :fames do |t|
      t.integer :famenum

      t.timestamps
    end
  end
end
