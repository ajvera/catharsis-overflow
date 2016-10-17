# 30.times do User.create(name: Faker::Name.name, email: Faker::Internet.email, username: Faker::Internet.user_name, password: Faker::Lorem.characters(8))
# end

# 20.times do Question.create(title: Faker::Hipster.sentence(5), body: Faker::Hipster.paragraph, asker_id: rand(1..30))
# end

# 100.times do Answer.create(body: Faker::Hipster.paragraph, responder_id: rand(1..30), question_id: rand(1..20))
# end

# 100.times do Comment.create(body: Faker::Hipster.sentence, user_id: rand(1..30), commentable_type: "Question", commentable_id: Question.find(rand(1..10)).id)
# end

# 100.times do Comment.create(body: Faker::Hipster.sentence, user_id: rand(1..30), commentable_type: "Answer", commentable_id: Answer.find(rand(11..20)).id)
# end

# 100.times do Vote.create(votable_type: "Question", votable_id: Question.find(rand(1..20)).id, voter_id: (rand(1..30)), vote_value: [1,-1].sample)
# end

# 100.times do Vote.create(votable_type: "Answer", votable_id: Answer.find(rand(1..20)).id, voter_id: (rand(1..30)), vote_value: [1,-1].sample)
# end

User.create(name: "Matt", email: "grimmer20@matt.com", username: "grimmer20", password: "password")

User.create(name: "Joan", email: "joan@gmail.com", username: "joany", password: "password")

User.create(name: "Sayam", email: "sayamiam@yahoo.com", username: "sayamkim", password: "password")

User.create(name: "Gryle", email: "gregkyle@yahoo.com", username: "grylebff", password: "password")

Question.create(title: "Distraught!", body: "I have to get married on Saturday, but I'm sad that I won't get to spend the weekend coding Catharsis Overflow. Please help me be less sad about this.", asker_id: 1)

Question.create(title: "My cat ate my shoelaces...", body: "on all but one pair of my shoes. I'm so busy with DBC that I haven't been able to go to the store to buy new laces.", asker_id: 2)

Answer.create(body: "Maybe these people can help? http://www.oak-park.us/public_health/animal_Control.html", responder_id: 3, question_id: 2)

Answer.create(body: "https://www.youtube.com/watch?v=a1Y73sPHKxw", responder_id: 4, question_id: 1)

User.create(name: "Stephanie", email: "stephanie@gmail.com", username: "stelane", password: "password")

Question.create(title: "Out of coffee", body: "Help! Out of coffee and distraught. Unable to achieve basic life skills.", asker_id: 5)

Answer.create(body: "Maybe you should get some velcro shoes instead? 541b6b20a35afddcd1a5e85ea65e07a6.jpg", responder_id: 5, question_id: 2)
