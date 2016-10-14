30.times do User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.user_name, password: Faker::Lorem.characters(8))
end

20.times do Question.create(title: Faker::Hipster.sentence(5), body: Faker::Hipster.paragraph, asker_id: rand(1..30))
end

100.times do Answer.create(body: Faker::Hipster.paragraph, responder_id: rand(1..30), question_id: rand(1..20))
end

100.times do Comment.create(body: Faker::Hipster.sentence, user_id: rand(1..30), commentable_type: "Question", commentable_id: Question.find(rand(1..10)).id)
end

100.times do Comment.create(body: Faker::Hipster.sentence, user_id: rand(1..30), commentable_type: "Answer", commentable_id: Answer.find(rand(11..20)).id)
end

100.times do Vote.create(votable_type: "Question", votable_id: Question.find(rand(1..20)).id, voter_id: (rand(1..30)))
end

100.times do Vote.create(votable_type: "Answer", votable_id: Answer.find(rand(1..20)).id, voter_id: (rand(1..30)))
end
