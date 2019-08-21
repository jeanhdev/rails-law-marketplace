class Procedure < ApplicationRecord
  belongs_to :user
  belongs_to :service

  validates :date, :grievance, presence: true
end
