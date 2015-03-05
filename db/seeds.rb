# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
    # Room.create(room_name: 'Ruby on Rails Room',
    #             location: 'Building C',
    #             description: 'Perfect room for small gatherings. Features a whiteboard and projector.
    #             Design accents include an open ceiling concept and glass wall',
    #             )
Room.create([{ room_name: 'Ruby on Rails Classroom',
              location: 'Building C',
              description: 'Perfect room for small gatherings. Features a whiteboard and projector. Design accents include an open ceiling concept and glass wall.',
              photo: 'http://kbjsinstaclone.s3.amazonaws.com/rooms/photos/000/000/001/medium/IMG_1567.JPG?1424648648'
              },
              { room_name: 'Web Design Classroom',
              location: 'Building C',
              description: 'This conference room is perfect for 10 or fewer participants. It features a large screen television with hookups for projecting your screen. This room also has lots of natural light and a modern design.',
              photo: 'http://kbjsinstaclone.s3.amazonaws.com/rooms/photos/000/000/002/medium/IMG_1569.JPG?1424649266'
              },
              { room_name: 'Main Co-Working Space',
              location: 'Building C',
              description: 'This room is perfect for campus wide meetings. It boasts plenty of space for the whole group, large tables for working plus open space for a huddle. Features of this room include: the most comfortable chairs on earth (limited: 1st come, 1st serve), a couch and 2 arm chairs, and best of all - a shuffle board table! This room is projector compatible, just be sure to let the campus director know ahead of time so the proper arrangements can be made.',
              photo: 'http://kbjsinstaclone.s3.amazonaws.com/rooms/photos/000/000/003/medium/IMG_1570.JPG?1424649620'
              },
              { room_name: 'Dining Room (Building C)',
              location: 'Building C',
              description: 'Spacious kitchen and dining room. This room is perfect for casual chats over food and drink. In addition to plenty of beer and coffee, this room also has a large screen tv with hookups to project your screen.',
              photo: 'http://kbjsinstaclone.s3.amazonaws.com/rooms/photos/000/000/004/medium/IMG_1568.JPG?1424649794'
              },
              { room_name: 'Blue Room',
              location: 'Building K',
              description: 'A large conference room with tables arranged for whole group discussions and collaboration. Features include a large whiteboard and projector capabilities upon request.',
              photo: 'http://kbjsinstaclone.s3.amazonaws.com/rooms/photos/000/000/005/medium/IMG_1571.JPG?1424649996'
              },
              { room_name: 'Javascript Classroom (Yellow Room)',
              location: 'Building K',
              description: 'A large conference room perfect for presentations. Includes ten forward-facing tables, a large whiteboard and a projector. At the back of the space is a more intimate gathering spot with a couch and arm chairs.',
              photo: 'http://kbjsinstaclone.s3.amazonaws.com/rooms/photos/000/000/006/medium/IMG_1573.JPG?1424650150'
              },
              { room_name: 'Fish Room',
              location: 'Building K',
              description: 'An informal gathering spot with couches aplenty! Plus, it has fish!',
              photo: 'http://kbjsinstaclone.s3.amazonaws.com/rooms/photos/000/000/007/medium/IMG_1572.JPG?1424650242'
              },
              { room_name: 'Dining Room (Building K)',
              location: 'Building K',
              description: 'This room is available for meeting over lunch or coffee. Ideal for a small group of 6 or fewer.',
              photo: 'http://kbjsinstaclone.s3.amazonaws.com/rooms/photos/000/000/008/medium/IMG_1575.JPG?1424650369'
              }])
