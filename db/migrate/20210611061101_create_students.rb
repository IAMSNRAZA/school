class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :stu_name

      t.timestamps
    end
  end
end
