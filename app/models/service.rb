class Service < ApplicationRecord
  CATEGORIES = ["Divorce", "Pension Alimentaire", "Stationnement", "Excès de vitesse", "Licenciement", "Harcèlement"]
  belongs_to :user
  has_many :procedures
  validates :title, presence: true
  validates :description, presence: true
  validates :duration, presence: true
  validates :price, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
end
