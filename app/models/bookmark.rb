class Bookmark < ApplicationRecord
    belongs_to :user, class_name: "user", foreign_key: "user_id"
    belongs_to :team, class_name: "team", foreign_key: "team_id"
end
