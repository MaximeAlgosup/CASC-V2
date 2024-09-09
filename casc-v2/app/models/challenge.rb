class Challenge < ApplicationRecord

    DIFFICULTY_LEVELS = [["Easy", 0], ["Medium", 1], ["Hard", 2], ["Expert", 3], ["Expert +", 4], ["Expert ++", 5], ["Expert #", 6]]

    belongs_to :category

    validates :title, presence: true
    validates :description, presence: true, length: { minimum: 10 }
    validates :difficulty, presence: true, numericality: { only_integer: true }
    validates :rank, presence: true, numericality: { only_integer: true }
    validates :points, presence: true, comparison: { greater_than_or_equal_to: 1 }, numericality: { only_integer: true }
    validates :category_id, presence: true

end