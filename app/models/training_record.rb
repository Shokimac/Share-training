class TrainingRecord < ApplicationRecord
    belongs_to :user
    has_many :training_genres
end
