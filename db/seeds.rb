# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
  House.create(
    price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    details: Faker::Lorem.sentence,
    about: Faker::Lorem.word,
    image: 'https://images.unsplash.com/photo-1600121848594-d8644e57abab?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aW50ZXJpb3IlMjBkZXNpZ25zfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    owner: 'Unsplash interior'
  )

  House.create(
    price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    details: Faker::Lorem.sentence,
    about: Faker::Lorem.word,
    image: 'https://www.decoraid.com/wp-content/uploads/2018/07/Luxurious-interior-design-living-room-and-fireplace-in-a-beautiful-house-scaled-958x575.jpeg',
    owner: 'decoraid'
  )

  House.create(
    price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    details: Faker::Lorem.sentence,
    about: Faker::Lorem.word,
    image: 'https://www.decoraid.com/wp-content/uploads/2021/05/contemorary-interior-design-style-1536x940.jpg',
    owner: 'decoraid'
  )

  House.create(
    price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    details: Faker::Lorem.sentence,
    about: Faker::Lorem.word,
    image: 'https://images.unsplash.com/photo-1593696140826-c58b021acf8b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aW50ZXJpb3IlMjBkZXNpZ25zfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    owner: 'unsplashed interior'
  )

  House.create(
    price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    details: Faker::Lorem.sentence,
    about: Faker::Lorem.word,
    image: 'https://images.unsplash.com/photo-1607961418926-93bf4210d345?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzd8fGludGVyaW9yJTIwZGVzaWduc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    owner: 'unsplashed interior'
  )

  House.create(
    price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    details: Faker::Lorem.sentence,
    about: Faker::Lorem.word,
    image: 'https://images.unsplash.com/photo-1573734371096-714aeb6791f6?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjN8fGludGVyaW9yJTIwZGVzaWduc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    owner: 'unsplashed interior'
  )

   House.create(
     price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
     details: Faker::Lorem.sentence,
     about: Faker::Lorem.word,
     image: 'https://images.unsplash.com/photo-1565031491910-e57fac031c41?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fGludGVyaW9yJTIwZGVzaWduc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
     owner: 'unsplashed interior'
   )

   House.create(
     price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
     details: Faker::Lorem.sentence,
     about: Faker::Lorem.word,
     image: 'https://images.unsplash.com/photo-1560185127-6ed189bf02f4?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fGludGVyaW9yJTIwZGVzaWduc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
     owner: 'unsplashed interior'
   )
  
   House.create(
     price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
     details: Faker::Lorem.sentence,
     about: Faker::Lorem.word,
     image: 'https://images.unsplash.com/photo-1532323544230-7191fd51bc1b?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fGludGVyaW9yJTIwZGVzaWduc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
     owner: 'unsplashed interior'
   )

   House.create(
     price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
     details: Faker::Lorem.sentence,
     about: Faker::Lorem.word,
     image: 'https://www.decoraid.com/wp-content/uploads/2021/05/french-country-interior-design-styles.jpg',
     owner: 'decoraid'
   )

  House.create(
    price: Faker::Number.decimal(l_digits: 3, r_digits: 2),
    details: Faker::Lorem.sentence,
    about: Faker::Lorem.word,
    image: 'https://images.unsplash.com/photo-1611444756156-bbe40e0a2e56?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aW50ZXJpb3IlMjBkZXNpZ25zfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    owner: 'unsplash interior'
  )
