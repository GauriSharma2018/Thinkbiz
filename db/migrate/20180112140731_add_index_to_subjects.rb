class AddIndexToSubjects < ActiveRecord::Migration[5.0]
  def change
    add_index :subjects, :student_id
  end
end
