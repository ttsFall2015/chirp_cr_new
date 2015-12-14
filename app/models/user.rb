class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :tweets
  validates :username, presence: true, uniqueness: true
  validates :message, presence: true, length: {maximum: 140, too_long: "A chirp is only 140 charachters max. Everyone knows that!"}
end
