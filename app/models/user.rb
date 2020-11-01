class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  attachment :image

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :bookmarks, dependent: :destroy
  has_many :footprints, dependent: :destroy
  has_many :team_members, dependent: :destroy
  has_many :training_records, dependent: :destroy
  has_many :post_messages, dependent: :destroy
  has_many :training_genres, dependent: :destroy
  belongs_to :genre
  belongs_to :team

  def self.guest
    find_or_create_by!(email: 'guest@sample.com') do |user|
      user.password = SecureRandom.urlsafe_base64
    end
  end
end