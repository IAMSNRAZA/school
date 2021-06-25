class CreateMyclasses < ActiveRecord::Migration[6.0]
  def change
    create_table :myclasses do |t|
      t.integer :myclass_no
      t.integer :student_id
      t.integer :teacher_id

      t.timestamps
    end
  end
end
