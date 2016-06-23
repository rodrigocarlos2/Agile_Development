class CreateNurses < ActiveRecord::Migration
  def change
    create_table :nurses do |t|
      t.string :name
      t.string :sex
      t.integer :age
      t.integer :coren
      t.string :cpf

      t.timestamps null: false
    end
  end
end
