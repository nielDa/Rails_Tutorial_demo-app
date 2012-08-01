class CreateLenguajes < ActiveRecord::Migration
  def change
    create_table :lenguajes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
