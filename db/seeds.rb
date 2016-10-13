30.times{User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.user_name, password: Faker::Lorem.characters(8))}

20.times{Question.create(title: Faker::Hipster.sentence(5), body: Faker::Hipster.paragraph, asker_id: rand(30))}

20.times{Answer.create(body: Faker::Hipster.paragraph, responder_id: rand(20), question_id: rand(20))}

20.times{Comment.create(body: Faker::Hipster.sentence, user_id: rand(20))}

20.times{Comment.create(voter_id: rand(20))}