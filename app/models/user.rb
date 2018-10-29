class User < ApplicationRecord
  has_many :tweets, foreign_key: "author_id"
  has_and_belongs_to_many :liked_tweets, class_name: "Tweet"
  has_many :sent_messages, class_name: "PrivateMessage", foreign_key: "sender_id"
  has_and_belongs_to_many :received_messages, class_name: "PrivateMessage"

  has_many :follower_relationships, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :follower_relationships

  has_many :following_relationships, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followings, through: :following_relationships

end
