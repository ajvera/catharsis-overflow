30.times do User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.user_name, password: Faker::Lorem.characters(8))
end

20.times do Question.create(title: Faker::Hipster.sentence(5), body: Faker::Hipster.paragraph, asker_id: rand(1..30))
end

20.times do Answer.create(body: Faker::Hipster.paragraph, responder_id: rand(1..30), question_id: rand(1..20))
end

10.times do Comment.create(body: Faker::Hipster.sentence, user_id: rand(1..30), commentable_type: "Question", commentable_id: 10.times{Question.find(rand(1..10))})
end

10.times do Comment.create(body: Faker::Hipster.sentence, user_id: rand(1..30), commentable_type: "Answer", commentable_id: 10.times{Answer.find(rand(1..10))})
end

40.times do Vote.create(votable_type: "Question", votable_id: 10.times{Question.find(rand(1..20))}, voter_id: (rand(1..30)))
end

40.times do
  Vote.create(votable_type: "Answer", votable_id: 10.times{Answer.find(rand(1..20))}, voter_id: (rand(1..30)))
end
