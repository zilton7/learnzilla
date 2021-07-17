User.destroy_all
user = User.create!(email: 'admin@mail.com', password: '123456', password_confirmation: '123456')

Course.destroy_all
30.times do
  Course.create!(
    user: user,
    title: Faker::Educator.course_name,
    description: Faker::TvShows::MichaelScott.quote
  )
end