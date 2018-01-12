class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :subjects, id: false do |t|
      t.integer :id ,primary_key: true, auto_increment:true
      t.string  :name
      t.integer :student_id
      t.timestamps
    end
  end
end
