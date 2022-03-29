class CreateTeachers < ActiveRecord::Migration[6.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :age
      t.references :subject, foreign_key: true

      t.timestamps
    end
  end
end
