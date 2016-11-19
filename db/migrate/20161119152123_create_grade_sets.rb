class CreateGradeSets < ActiveRecord::Migration[5.0]
  def change
    create_table :grade_sets do |t|
      t.string :year
      t.decimal :grade1
      t.decimal :grade2
      t.decimal :grade3
      t.decimal :grade4
      t.references :student, foreign_key: true

      t.timestamps
    end
  end
end
