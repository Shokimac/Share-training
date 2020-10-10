class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookmarks, dependent: :destroy
  has_many :footprints, dependent: :destroy
  has_many :team_members, dependent: :destroy
  has_many :training_records, dependent: :destroy
  has_many :post_messages, dependent: :destroy
end
