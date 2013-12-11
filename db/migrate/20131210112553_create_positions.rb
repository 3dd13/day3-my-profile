class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :title
      t.string :company

      t.timestamps
    end
  end
end
