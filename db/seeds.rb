
Category.destroy_all
Subcategory.destroy_all
User.destroy_all
MentorInfo.destroy_all

cat1 = Category.create!(name: 'Art')
cat2 = Category.create!(name: 'Cooking')
cat3 = Category.create!(name: 'Dance')
cat4 = Category.create!(name: 'Healthy Living')
cat5 = Category.create!(name: 'Language')
cat6 = Category.create!(name: 'Martial Arts')
cat7 = Category.create!(name: 'Music')
cat8 = Category.create!(name: 'Plants and Things')
cat9 = Category.create!(name: 'Tech')






art1 = Subcategory.create!(name:'Painting', category_id: cat1.id)
art2 = Subcategory.create!(name:'Crafts', category_id: cat1.id)
art3 = Subcategory.create!(name:'Photography', category_id: cat1.id)
art4 = Subcategory.create!(name:'Drawing', category_id: cat1.id)
art5 = Subcategory.create!(name:'Oils', category_id: cat1.id)
art6 = Subcategory.create!(name:'Water Colour', category_id: cat1.id)
art7 = Subcategory.create!(name:'Ceramic', category_id: cat1.id)
art8 = Subcategory.create!(name:'Stained-glass', category_id: cat1.id)

cook1 = Subcategory.create!(name:'Baking', category_id: cat2.id)
cook2 = Subcategory.create!(name:'Vegan', category_id: cat2.id)
cook3 = Subcategory.create!(name:'Vegetarian', category_id: cat2.id)
cook4 = Subcategory.create!(name:'Paleo', category_id: cat2.id)
cook5 = Subcategory.create!(name:'Ethnic', category_id: cat2.id)
cook2 = Subcategory.create!(name:'Meal Prep', category_id: cat2.id)
cook2 = Subcategory.create!(name:'Everyday Cooking', category_id: cat2.id)

dance1 = Subcategory.create!(name: 'Ballet', category_id: cat3.id)
dance2 = Subcategory.create!(name: 'Jazz', category_id: cat3.id)
dance3 = Subcategory.create!(name: 'Tap', category_id: cat3.id)
dance4 = Subcategory.create!(name: 'Hiphop', category_id: cat3.id)
dance5 = Subcategory.create!(name: 'Modern', category_id: cat3.id)
dance6 = Subcategory.create!(name: 'Hiphop', category_id: cat3.id)
dance7 = Subcategory.create!(name: 'Modern', category_id: cat3.id)
dance8 = Subcategory.create!(name: 'Salsa', category_id: cat3.id)
dance9 = Subcategory.create!(name: 'Tango', category_id: cat3.id)

healthy1 = Subcategory.create!(name:'Yoga', category_id: cat4.id)
healthy2 = Subcategory.create!(name:'Pilates', category_id: cat4.id)
healthy3 = Subcategory.create!(name:'Meditation', category_id: cat4.id)
healthy4 = Subcategory.create!(name:'Zumba', category_id: cat4.id)
healthy5 = Subcategory.create!(name:'Personal Trainers', category_id: cat4.id)
healthy6 = Subcategory.create!(name:'Flexibility', category_id: cat4.id)
healthy7 = Subcategory.create!(name:'RMT', category_id: cat4.id)
healthy8 = Subcategory.create!(name:'Head Doctors', category_id: cat4.id)

language1 = Subcategory.create!(name:'English', category_id: cat5.id)
language2 = Subcategory.create!(name:'Spanish', category_id: cat5.id)
language3 = Subcategory.create!(name:'French', category_id: cat5.id)
language4 = Subcategory.create!(name:'Arabic', category_id: cat5.id)
language5 = Subcategory.create!(name:'Hindi', category_id: cat5.id)
language6 = Subcategory.create!(name:'Urdu', category_id: cat5.id)
language7 = Subcategory.create!(name:'Farsi', category_id: cat5.id)
language8 = Subcategory.create!(name:'Mandarin', category_id: cat5.id)
language9 = Subcategory.create!(name:'Japanese', category_id: cat5.id)
language10 = Subcategory.create!(name:'Cantonese', category_id: cat5.id)
language11 = Subcategory.create!(name:'Italian', category_id: cat5.id)
language12 = Subcategory.create!(name:'Portuguese', category_id: cat5.id)
language13 = Subcategory.create!(name:'Russian', category_id: cat5.id)


ma1 = Subcategory.create!(name:'Karate', category_id: cat6.id)
ma2 = Subcategory.create!(name:'Kung-fu', category_id: cat6.id)
ma3 = Subcategory.create!(name:'Kick-boxing', category_id: cat6.id)
ma4 = Subcategory.create!(name:'MMA', category_id: cat6.id)
ma5 = Subcategory.create!(name:'Taekwondo', category_id: cat6.id)
ma6 = Subcategory.create!(name:'Boxing', category_id: cat6.id)
ma7 = Subcategory.create!(name:'Brazilian Jiu-Jitsu', category_id: cat6.id)
ma8 = Subcategory.create!(name:'Jit-Jitsu', category_id: cat6.id)
ma9 = Subcategory.create!(name:'Judo', category_id: cat6.id)
ma10 = Subcategory.create!(name:'Muay Thai', category_id: cat6.id)
ma11 = Subcategory.create!(name:'Krav Maga', category_id: cat6.id)

music1 = Subcategory.create!(name:'Singing', category_id: cat7.id)
music2 = Subcategory.create!(name:'Piano', category_id: cat7.id)
music3 = Subcategory.create!(name:'Guitar', category_id: cat7.id)
music4 = Subcategory.create!(name:'Sax', category_id: cat7.id)
music5 = Subcategory.create!(name:'Trumpet', category_id: cat7.id)
music6 = Subcategory.create!(name:'Fiddle/Violin', category_id: cat7.id)
music7 = Subcategory.create!(name:'Banjo', category_id: cat7.id)
music8 = Subcategory.create!(name:'World Instruments', category_id: cat7.id)
music9 = Subcategory.create!(name:'Drums', category_id: cat7.id)



plant1 = Subcategory.create!(name:'Plants & Trees', category_id: cat8.id)
plant2 = Subcategory.create!(name:'Grow-Your-Own', category_id: cat8.id)
plant3 = Subcategory.create!(name:'Flowers', category_id: cat8.id)
plant4 = Subcategory.create!(name:'Care', category_id: cat8.id)
plant5 = Subcategory.create!(name:'Terrariums', category_id: cat8.id)

tech1 = Subcategory.create!(name:'Graphic Design', category_id: cat9.id)
tech2 = Subcategory.create!(name:'Web Design', category_id: cat9.id)
tech3 = Subcategory.create!(name:'Mobile App', category_id: cat9.id)
tech4 = Subcategory.create!(name:'Tech Help', category_id: cat9.id)
tech5 = Subcategory.create!(name:'Programming', category_id: cat9.id)
tech6 = Subcategory.create!(name:'Game Development', category_id: cat9.id)
tech7 = Subcategory.create!(name:'Machine Learning/A.I.', category_id: cat9.id)
tech8 = Subcategory.create!(name:'Digital Marketing', category_id: cat9.id)






mentors = [

  {first_name: 'Jenny', last_name: 'Jones', is_mentor: true, email: 'jenny@jones.com', subcategories: [cook1, cook2,cook3], postal_code: "M5H 1K4", avatar:'http://images.all-free-download.com/images/graphiclarge/girl_laugh_face_215748.jpg'},

  {first_name: 'Jesse', last_name: 'Oils', is_mentor: true, email: 'jesse@oils.com', subcategories: [art5, ma7,healthy6], postal_code: "M5H 1K5", avatar: 'http://images.all-free-download.com/images/graphiclarge/man_singer_musician_214792.jpg'},

  {first_name: 'Sean', last_name: 'Smith', is_mentor: true, email: 'sean@smith.com', subcategories: [tech4, tech5,tech6], postal_code: "M5H 1K6", avatar: 'http://images.all-free-download.com/images/graphiclarge/portrait_of_a_man_202908.jpg'},

  {first_name: 'Meghan', last_name: 'Modal', is_mentor: true, email: 'meghan@modal.com', subcategories: [ma1, tech5,tech6], postal_code: "M5H 1K7", avatar: 'http://images.all-free-download.com/images/graphiclarge/woman_and_winter_fashion_212569.jpg'},

  {first_name: 'Daniel', last_name: 'Monies', is_mentor: true, email: 'dan@monies.com', subcategories: [art1, art2,cook3], postal_code: "M5H 1K4",avatar: 'https://cdn.pixabay.com/photo/2015/01/07/20/53/hat-591973_960_720.jpg'},

  {first_name: 'Sally', last_name: 'Mills', is_mentor: true, email: 'sally@mills.com', subcategories: [art1, art2,healthy6], postal_code: "M5H 1K5", avatar: 'https://cdn.pixabay.com/photo/2016/03/23/08/34/beautiful-1274361_960_720.jpg'},

  {first_name: 'Steve', last_name: 'Phelps', is_mentor: true, email: 'steve@phelps.com', subcategories: [art1, art2,tech6], postal_code: "M5H 1K6", avatar:'https://cdn.pixabay.com/photo/2017/09/25/13/12/man-2785071_960_720.jpg'},

  {first_name: 'Kim', last_name: 'Williams', is_mentor: true, email: 'kim@williams.com', subcategories: [music8, art2,tech6], postal_code: "M5H 1K7", avatar: 'https://cdn.pixabay.com/photo/2017/09/09/13/15/womens-2732011_960_720.jpg'},

  {first_name: 'Robert', last_name: 'Monday', is_mentor: true, email: 'robert@monday.com', subcategories: [art3, art2,healthy6], postal_code: "M5H 1K5",avatar:'https://cdn.pixabay.com/photo/2017/08/07/01/28/model-2598418_960_720.jpg'},

  {first_name: 'Kara', last_name: 'Cats', is_mentor: true, email: 'Kara@cats.com', subcategories: [art4, plant5,tech6], postal_code: "M5H 1K6", avatar:'https://cdn.pixabay.com/photo/2017/09/21/19/35/model-2773136_960_720.jpg'},

  {first_name: 'Billy', last_name: 'Stuart', is_mentor: true, email: 'billy@stuart.com', subcategories: [tech3, healthy3,tech6], postal_code: "M5H 1K7",  avatar:'https://cdn.pixabay.com/photo/2017/05/12/08/57/portrait-2306566_960_720.jpg'}

  ]

mentors.each do |user|

  user = User.create!(
    user.merge(
      phone: 5555,
      password: '1234',
      password_confirmation: '1234',
    )
  )
  a = MentorInfo.create(summary: "I am an amazing mentor!")
  user.mentor_info = a
  puts "#{user.first_name} created"
end

# user.mentor_info = a



students = [

  {first_name: 'Jane', last_name: 'Jiggs', is_mentor: false, email: 'jane@jiggs.com',  postal_code: "M5H 1K5", avatar: 'https://cdn.pixabay.com/photo/2017/06/12/07/43/womens-2394593_960_720.jpg'},
  {first_name: 'Mikey', last_name: 'Donald', is_mentor: false, email: 'mikey@donald.com',  postal_code: "M5H 1K5", avatar: 'https://cdn.pixabay.com/photo/2017/08/10/15/24/man-2623744_960_720.jpg'},
  {first_name: 'Shezan', last_name: 'Smith', is_mentor: false,email: 'shezan@smith.com',  postal_code: "M5H 1K5", avatar: 'https://cdn.pixabay.com/photo/2017/08/15/16/28/portrait-2644622_960_720.jpg'},
  {first_name: 'Anne', last_name: 'Byers', is_mentor: false, email: 'anne@byers.com',  postal_code: "M5H 1K5",avatar: 'https://cdn.pixabay.com/photo/2017/09/06/23/08/hat-2723453_960_720.jpg'},
  {first_name: 'Juan', last_name: 'Florez', is_mentor: false, email: 'juan@florez.com',  postal_code: "M5H 1K5", avatar: 'https://cdn.pixabay.com/photo/2017/06/15/19/58/person-2406544_960_720.jpg'},
  {first_name: 'Mary', last_name: 'Simmons', is_mentor: false,email: 'mary@simmons.com',  postal_code: "M5H 1K5", avatar:'https://cdn.pixabay.com/photo/2017/06/09/17/11/model-2387582_960_720.jpg'}
]

students.each do |user|

  user = User.create!(
    user.merge(
      phone: 4444,
      password: '1234',
      password_confirmation: '1234',

    )
  )

  puts "#{user.first_name} created"
end


men1 = MentorInfo.create(user_id: 2)
