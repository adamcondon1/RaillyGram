class CreateNegatives < ActiveRecord::Migration[7.0]
  def change
    create_table :negatives do |t|
      t.integer :negativenum

      t.timestamps
    end
  end
end
