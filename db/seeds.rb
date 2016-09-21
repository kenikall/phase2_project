Teacher.destroy_all
Student.destroy_all

10.times do |teacher|
  Teacher.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password",
    title: ["Mr.","Ms.","Mrs.","Miss", "Dr."].sample,
    promo_emails: [true,false].sample
    )
end

80.times do |student|
  Student.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    teacher_id: Teacher.all.sample
    )
end


