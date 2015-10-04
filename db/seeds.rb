# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Program.create(name: 'All About the Back')

Exercise.create(name: 'Scapular Retractions', description: 'Draw your shoulder blades back and down, as though trying to squeeze a pencil between them',
repetition: '3 sets of 10',
image: 'www.scapretract.jpg')
Exercise.create(name: 'Cervical Retraction', description: 'Bring your ears backward until they line up with your shoulders, think of lengthening your neck and begin to give yourself a double chin, and hold for 5 seconds',
repetition: '1 set of 10',
image: 'www.cervicalretract.jpg')
Exercise.create(name: 'Transversus Abdominus (TA) Contraction', description: 'Draw your belly button in toward your spine, keep breathing, count to 5',
repetition: '1 set of 15',
image: 'www.TA.jpg')

ExerciseSchedule.create(program_id: 1, exercise_id: 1)
ExerciseSchedule.create(program_id: 1, exercise_id: 2)
ExerciseSchedule.create(program_id: 1, exercise_id: 3)
