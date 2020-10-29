class Team < ApplicationRecord
    attachment :image
    has_many :users
    has_many :bookmarks, dependent: :destroy
    has_many :footprints, dependent: :destroy
    has_many :team_members, dependent: :destroy
    has_many :post_messages, dependent: :destroy

    def bookmarked_by?(user)
        bookmarks.find_by(user_id: user.id).blank?
    end
end