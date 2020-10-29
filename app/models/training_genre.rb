class TrainingGenre < ApplicationRecord
    belongs_to :user
    has_many :training_records
end
