# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username:'A', password:'1234')
u2 = User.create(username:'B', password:'1234')

t1 = Task.create(title: "Clean", startDate: new Date(2022, 8, 2, 10, 0), endDate: new Date(2022, 8, 2, 12, 0), location: "nyc")
t2 = Task.create(title: "study", startDate: new Date(2022, 8, 3, 10, 0), endDate: new Date(2022, 8, 3, 12, 0), location: "ls")
t3 = Task.create(title: "swim", startDate: new Date(2022, 8, 4, 10, 0), endDate: new Date(2022, 8, 4, 12, 0), location: "ma")

s1 = Scheduler.create(user_id: u1, task_id: t1)
s2 = Scheduler.create(user_id: u2, task_id: t3)
s3 = Scheduler.create(user_id: u1, task_id: t2)