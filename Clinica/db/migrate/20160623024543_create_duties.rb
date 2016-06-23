class CreateDuties < ActiveRecord::Migration
  def change
    create_table :duties do |t|
      t.string :turn
      t.references :day, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
