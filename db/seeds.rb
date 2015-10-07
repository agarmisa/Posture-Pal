# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Exercise.create(name: 'Scapular Retractions',
                description: 'Draw your shoulder blades back and down, as though
                trying to squeeze a pencil between them',
                repetition: '3 sets of 10',
                image: 'www.scapretract.jpg')
Exercise.create(name: 'Cervical Retraction',
                description: 'Bring your ears backward until they line up with
                your shoulders, think of lengthening your neck and begin to give
                yourself a double chin, and hold for 5 seconds',
                repetition: '1 set of 10',
                image: 'www.cervicalretract.jpg')
Exercise.create(name: 'Transversus Abdominus (TA) Contraction',
                description: 'Draw your belly button in toward your spine, keep
                breathing, count to 5',
                repetition: '1 set of 15',
                image: 'www.TA.jpg')
Exercise.create(name: 'Isometric Hamstring Curl',
                description: 'Dig your heel into the ground and contract your
                muscles as you are trying to do a hamstring curl against the
                force of the ground, hold for 5 seconds',
                repetition: '2 sets of 10',
                image: 'www.HS.jpg')
Exercise.create(name: 'Isometric Hip Abduction',
                description: 'Place your hand on the outside of your thigh, use
                your arm to resist your leg pushing out, while your hands press
                in, hold 5 seconds',
                repetition: '2 sets of 10',
                image: 'www.hipabduction.jpg')
Exercise.create(name: 'Long Arc Quad',
                description: 'Keep the back of your leg on your chair and kick
                your leg out in front of you, focus on contracting the front of
                your thigh, count 3 seconds out and 3 seconds in',
                repetition: '2 sets of 10',
                image: 'www.hipabduction.jpg')

# ExerciseSchedule.create(program_id: 1, exercise_id: 1)
# ExerciseSchedule.create(program_id: 1, exercise_id: 2)
# ExerciseSchedule.create(program_id: 1, exercise_id: 3)
# ExerciseSchedule.create(program_id: 2, exercise_id: 4)
# ExerciseSchedule.create(program_id: 2, exercise_id: 5)
# ExerciseSchedule.create(program_id: 2, exercise_id: 6)
