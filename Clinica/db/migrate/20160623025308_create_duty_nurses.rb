class CreateDutyNurses < ActiveRecord::Migration
  def change
    create_table :duty_nurses do |t|
      t.references :duty, index: true, foreign_key: true
      t.references :nurse, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
