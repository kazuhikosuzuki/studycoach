class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.name = 'test'
      user.password = SecureRandom.urlsafe_base64
    end
  end
  validates :name, presence: true

  has_many :meetings
  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages
end
