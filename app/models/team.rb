class Team < ApplicationRecord
    has_many :bookmarks, dependent: :destroy
    has_many :footprints, dependent: :destroy
    has_many :team_members, dependent: :destroy
    has_many :post_messages, dependent: :destroy
    belongs_to :genre
end