class Review < ApplicationRecord
  belongs_to :pub
  validates :content, presence: true
  validates :rating, presence: true, inclusion: {in: (0..5).to_a}, numericality: true
  validates :pub_id, presence: true
end
