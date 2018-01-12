class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students, id: false do |t|
      t.integer :id ,primary_key: true, auto_increment:true
      t.string  :name
      t.timestamps
    end
  end
end
