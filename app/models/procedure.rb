class Procedure < ApplicationRecord
  belongs_to :user
  belongs_to :service, dependent: :destroy

  validates :date, :grievance, presence: true
end
