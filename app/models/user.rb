class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :friends, join_table: 'friends', foreign_key: [:from_id]
  has_many :active_friends, -> { where status: 'accepted' }, class_name: 'Friend', join_table: 'friends', foreign_key: [:from_id, :to_id]
  has_many :friend_requests, -> { where status: 'requested' }, class_name: 'Friend',  foreign_key: [:from_id, :to_id]


  def active_friends 
    binding.pry
  end
end
