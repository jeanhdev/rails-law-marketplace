class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true
  validates :avatar, presence: true

  # verifier que cette ligne pour l'avatar est utile
  has_attachment :avatar

  JOBS = ['lawyer', 'notary', 'bailiff', 'jurist', 'justiciable']
  validates :job, inclusion: { in: JOBS }

  # has_many :proposed_services, through: :procedures, source: :services
  has_many :services, dependent: :destroy
  has_many :procedures
end
