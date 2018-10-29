# #création des users

# 10.times do
#   User.create(name: Faker::DragonBall.character)
# end

# #création des tweets
# 100.times do
#   Tweet.create(content: Faker::ChuckNorris.fact, author_id: rand(1..11))
# end

# #ajout de likes aléatoires
# 100.times do
#   Tweet.find(rand(1..101)).likers << User.find(rand(1..11))
# end

# #ajout de messages avec sender
# 100.times do
#   PrivateMessage.create(content: Faker::DumbAndDumber.quote, sender_id: rand(1..11))
# end

# # ajout de recipients aux messages
# 100.times do |i|
#   e = rand(1..11)
#   PrivateMessage.find(i+1).recipients << User.find(e)
#   PrivateMessage.find(i+1).recipients << User.find((e+1)%11+1)
#   PrivateMessage.find(i+1).recipients << User.find((e+2)%11+1)
#   PrivateMessage.find(i+1).recipients << User.find((e+3)%11+1)
# end

# #supprimer tous les followers
# 11.times do |i|
#   User.find(i+1).followers = []
# end


# ajout de followers
100.times do
  User.find(rand(1..11)).followers << User.find(rand(1..11))
end

