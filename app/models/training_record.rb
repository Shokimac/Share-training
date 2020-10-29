class TrainingRecord < ApplicationRecord
    belongs_to :user
    belongs_to :training_genre
end