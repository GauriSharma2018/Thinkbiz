# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Account.create(account: "admin", password: "admin", user_type: 1)
Account.create(account: "student", password: "student", user_type: 2)
student_list = [ "Ajay" , "Pooja" , "Kareena" , "Kishi" ]

student_list.each do |name |
  Student.create( name: name )
end

subject_list = [ "English" , "Maths" , "Japanese" , "Science" ]

subject_list.each do |name |
  Subject.create( name: name , student_id: 1)
end
