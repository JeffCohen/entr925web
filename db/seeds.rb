# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

students = [
  {
    name: 'Jeff Cohen',
    hometown: 'Skokie, IL'
  },
  {
    name: 'Raghu Betina',
    hometown: 'Goshen, IN'
  }
]

students.each do |student_data|
  student = Student.find_by_name(student_data[:name]) || Student.new(student_data)
  student.update_attributes(student_data)
end
